import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoTile5 extends StatefulWidget {
  const VideoTile5({Key? key}) : super(key: key);

  @override
  _VideoTileState createState() => _VideoTileState();
}

class _VideoTileState extends State<VideoTile5> {
  late VideoPlayerController _videoController;
  late Future _intitializeVideoPlayer;

  @override
  void initState() {
    _videoController = VideoPlayerController.network(
        'https://res.cloudinary.com/nifty-gateway/video/upload/v1614741607/Ashley/AndreasWannerstedt3/the_open_hand_-_Andreas_Wannerstedt_au1bjs.mp4');
    _intitializeVideoPlayer = _videoController.initialize();
    _videoController.setLooping(true);
    _videoController.play();
    super.initState();
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: _intitializeVideoPlayer,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return VideoPlayer(_videoController);
          } else {
            return Container(color: Colors.grey[800]);
          }
        },
      ),
    );
  }
}
