import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:universal_video_controls/universal_video_controls.dart';
import 'package:universal_video_controls_video_player/universal_video_controls_video_player.dart';

class SinglePlayerSingleVideoScreen extends StatefulWidget {
  const SinglePlayerSingleVideoScreen({super.key});

  @override
  State<SinglePlayerSingleVideoScreen> createState() => _SinglePlayerSingleVideoScreenState();
}

class _SinglePlayerSingleVideoScreenState extends State<SinglePlayerSingleVideoScreen> {
  late VideoPlayerController _controller;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializeVideoPlayer('https://www034.anicdnstream.info/videos/hls/X8GZhXeZIVTW8JYRqrYZWA/1724776873/223377/4f2c0f603aaa698fd0fd53de4d7cbe4e/ep.1.1714817498.1080.m3u8');
  }

  void _initializeVideoPlayer(String source) async {
    _controller = VideoPlayerController.networkUrl(Uri.parse(source));
    await _controller.initialize();
    setState(() {
      _isInitialized = true;
    });
    _controller.play();
    _controller.addListener(() {
      if (_controller.value.hasError) {
        debugPrint(_controller.value.errorDescription);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Player'),
      ),
      body: Center(
        child: _isInitialized
            ? AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: VideoControls(
            controls: (state) {
              return Stack(
                children: [
                  Center(
                    child: IconButton(
                      icon: Icon(
                        state.widget.player.state.playing
                            ? Icons.pause
                            : Icons.play_arrow,
                        color: Colors.white,
                        size: 48.0,
                      ),
                      onPressed: () {
                        state.widget.player.playOrPause();
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 10.0,
                    left: 10.0,
                    child: IconButton(
                      icon: const Icon(Icons.skip_previous, color: Colors.white),
                      onPressed: () {
                        // Implement skip previous functionality
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 10.0,
                    right: 60.0,
                    child: IconButton(
                      icon: const Icon(Icons.skip_next, color: Colors.white),
                      onPressed: () {
                        // Implement skip next functionality
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 10.0,
                    right: 10.0,
                    child: IconButton(
                      icon: const Icon(
                        Icons.fullscreen,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // Implement fullscreen functionality
                      },
                    ),
                  ),
                ],
              );
            }, player: VideoPlayerControlsWrapper(_controller),
          ),
        )
            : const CircularProgressIndicator(),
      ),
    );
  }
}
