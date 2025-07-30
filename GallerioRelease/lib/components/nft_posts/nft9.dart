import 'package:GallerioV1/components/nft_posts/nft_post_template.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img1.dart';
import 'package:GallerioV1/components/video_tiles/video_tile9.dart';
import 'package:flutter/material.dart';

class NFT9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NFTTemplate(
      creator: 'Andreas Wannerstedt',
      title: 'Eternal Zen #49/92',
      description: "Eternal Zen by Andreas \nWannerstedt",
      numberOfLikes: '22',
      numberOfComments: '2',
      numberOfActivity: '3',
      ProfileImg: UserProfileImg1(),
      userPost: Container(
        child: VideoTile9(),
      ),
    );
  }
}
