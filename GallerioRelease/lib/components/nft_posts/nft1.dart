import 'package:GallerioV1/components/nft_posts/nft_post_template.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img1.dart';
import 'package:GallerioV1/components/video_tiles/video_tile1.dart';
import 'package:flutter/material.dart';

//examples of NFT posts

class NFT1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NFTTemplate(
      creator: 'Billelis',
      title: 'ΕΥΝΟΙΑ #2/10',
      description: "This is an orginal by Billelis. \nLaunched 2/07/2021",
      numberOfLikes: '22',
      numberOfComments: '5',
      numberOfActivity: '4',
      ProfileImg: UserProfileImg1(),
      userPost: Container(
        child: VideoTile1(),
      ),
    );
  }
}
