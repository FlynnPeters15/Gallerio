import 'package:GallerioV1/components/nft_posts/nft_post_template.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img5.dart';
import 'package:GallerioV1/components/video_tiles/video_tile3.dart';
import 'package:flutter/material.dart';

class NFT3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NFTTemplate(
      creator: 'ODESZA',
      title: 'Artifact #50/528',
      description: "Remnants Collection",
      numberOfLikes: '35',
      numberOfComments: '6',
      numberOfActivity: '5',
      ProfileImg: UserProfileImg5(),
      userPost: Container(
        child: VideoTile3(),
      ),
    );
  }
}
