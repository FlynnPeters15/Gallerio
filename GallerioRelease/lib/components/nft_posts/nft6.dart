import 'package:GallerioV1/components/nft_posts/nft_post_template.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img5.dart';
import 'package:GallerioV1/components/video_tiles/video_tile7.dart';
import 'package:flutter/material.dart';

class NFT6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NFTTemplate(
      creator: 'SteveAoki',
      title: 'run #196/281',
      description: "run by Steve Aoki x Antoni \nTudisco",
      numberOfLikes: '345',
      numberOfComments: '12',
      numberOfActivity: '3',
      ProfileImg: UserProfileImg5(),
      userPost: Container(
        child: VideoTile7(),
      ),
    );
  }
}
