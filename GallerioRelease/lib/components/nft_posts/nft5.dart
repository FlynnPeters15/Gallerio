import 'package:GallerioV1/components/nft_posts/nft_post_template.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img4.dart';
import 'package:GallerioV1/components/video_tiles/video_tile5.dart';
import 'package:flutter/material.dart';

class NFT5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NFTTemplate(
      creator: 'Andreas Wannerstedt',
      title: 'The Open Hand #1/82',
      description: "Sound Design by Darwood \nMusic",
      numberOfLikes: '432',
      numberOfComments: '5',
      numberOfActivity: '2',
      ProfileImg: UserProfileImg4(),
      userPost: Container(
        child: VideoTile5(),
      ),
    );
  }
}
