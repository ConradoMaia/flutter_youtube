import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../Api.dart';
import '../model/Video.dart';

class Inicio extends StatefulWidget {

  String pesquisa;

  Inicio(this.pesquisa);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

  _listarVideos(String pesquisa) {
    Api api = Api();
    return api.pesquisar(pesquisa);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Video>>(
      future: _listarVideos(widget.pesquisa),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return Center(
              child: CircularProgressIndicator(),
            );
          case ConnectionState.active:
          case ConnectionState.done:
            if (snapshot.hasData) {
              List<Video> videos = snapshot.data!;

              return ListView.separated(
                itemBuilder: (context, index) {
                  Video video = videos[index];

                  YoutubePlayerController _controller = YoutubePlayerController(
                    initialVideoId: video.id,
                    flags: YoutubePlayerFlags(
                      autoPlay: false,
                      mute: false,
                      isLive: false,
                      forceHD: false,
                      enableCaption: true,
                    ),
                  );

                  return GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          content: YoutubePlayer(
                            controller: _controller,
                            showVideoProgressIndicator: true,
                          ),
                        ),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(video.imagem),
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(video.titulo),
                          subtitle: Text(video.canal),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => const Divider(
                  height: 2,
                  color: Colors.grey,
                ),
                itemCount: videos.length,
              );
            } else {
              return const Center(
                child: Text("Nenhum dado a ser exibido!"),
              );
            }
        }
      },
    );
  }
}
