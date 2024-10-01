# flutter_youtube

This project is a replica of the YouTube mobile app, designed using Flutter. It focuses on replicating the appearance of the YouTube home screen and implementing essential functionalities. The app fetches videos from the YouTube API and allows users to search for videos using text input. Only the home screen is implemented in this version, along with its associated features.

## Project Overview

- **Platform**: Flutter (Android and iOS)
- **Functionality**:
  - Displays a list of videos fetched from the YouTube API on the home screen.
  - Allows users to search for videos by text to filter the list.
  - Plays videos using the embedded YouTube Player when a video is selected.
  
## Features

- **Home Screen**: Shows a list of videos retrieved from YouTube.
- **Search Functionality**: Users can type in a search bar to filter and display videos based on their input.
- **Video Player**: Plays selected videos in a dialog using YouTube Player with controls for playback.

## How it Works

1. **YouTube API Integration**: The app integrates with the YouTube API to fetch video data (title, thumbnail, channel) based on the user’s search input.
2. **Text Search**: Users can search for videos using the search button in the app bar. The search results will filter the video list displayed on the home screen.
3. **Video Playback**: Upon tapping a video, a dialog opens with the embedded YouTube Player to play the video.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/ConradoMaia/flutter_youtube.git
   ```
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Get a YouTube API Key and add it to the `Api.dart` file.

4. Run the app on an emulator or a connected device:
   ```bash
   flutter run
   ```

## Dependencies

- `youtube_player_flutter`: Used for embedding YouTube videos.
- `http`: For making HTTP requests to fetch video data from the YouTube API.

## Project from the Course

This project is part of the course **"Desenvolvimento Android e IOS com Flutter - Crie 15 Apps"** with some minor adaptations to enhance functionality and design.
