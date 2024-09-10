import 'package:flutter/material.dart';

class EmAlta extends StatefulWidget {
  const EmAlta({super.key});
  @override
  _EmAltaState createState() => _EmAltaState();
}

class _EmAltaState extends State<EmAlta> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text(
          "Em Alta",
          style: TextStyle(
              fontSize: 25
          ),
        ),
      ),
    );
  }
}
