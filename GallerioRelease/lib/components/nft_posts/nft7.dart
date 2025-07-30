import 'package:GallerioV1/components/nft_posts/nft_post_template.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img3.dart';
import 'package:GallerioV1/components/video_tiles/video_tile6.dart';
import 'package:flutter/material.dart';

class NFT7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NFTTemplate(
      creator: 'NessGraphics',
      title: 'H0M3BAS3 v.02 #13/25',
      description: "H0M3BAS3 v.02",
      numberOfLikes: '42',
      numberOfComments: '3',
      numberOfActivity: '2',
      ProfileImg: UserProfileImg3(),
      userPost: Container(
        child: VideoTile6(),
      ),
    );
  }
}
