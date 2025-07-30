import 'package:GallerioV1/components/nft_posts/nft_post_template.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img6.dart';
import 'package:GallerioV1/components/video_tiles/video_tile4.dart';
import 'package:flutter/material.dart';

class NFT4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NFTTemplate(
      creator: 'Pak',
      title: 'A Cube #356/5148',
      description: "The Fungible Open Editions \nby Pak",
      numberOfLikes: '543',
      numberOfComments: '12',
      numberOfActivity: '3',
      ProfileImg: UserProfileImg6(),
      userPost: Container(
        child: VideoTile4(),
      ),
    );
  }
}
