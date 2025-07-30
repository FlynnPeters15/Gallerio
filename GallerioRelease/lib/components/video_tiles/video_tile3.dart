import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoTile3 extends StatefulWidget {
  const VideoTile3({Key? key}) : super(key: key);

  @override
  _VideoTileState createState() => _VideoTileState();
}

class _VideoTileState extends State<VideoTile3> {
  late VideoPlayerController _videoController;
  late Future _intitializeVideoPlayer;

  @override
  void initState() {
    _videoController = VideoPlayerController.network(
        'https://res.cloudinary.com/nifty-gateway/video/upload/v1615752199/A/ODESZA/Artifact_H264_01_-_Adam_Foley_bodogo.mp4');
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
