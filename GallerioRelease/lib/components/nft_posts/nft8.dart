import 'package:GallerioV1/components/nft_posts/nft_post_template.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img5.dart';
import 'package:GallerioV1/components/video_tiles/video_tile8.dart';
import 'package:flutter/material.dart';

class NFT8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NFTTemplate(
      creator: 'Andreas Wannerstedt',
      title: 'The Smooth Saint #12/12',
      description: "Sound design by Darwood \nMusic ",
      numberOfLikes: '15',
      numberOfComments: '2',
      numberOfActivity: '3',
      ProfileImg: UserProfileImg5(),
      userPost: Container(
        child: VideoTile8(),
      ),
    );
  }
}
