import 'package:GallerioV1/components/nft_posts/nft_post_template.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img4.dart';
import 'package:GallerioV1/components/video_tiles/video_tile2.dart';
import 'package:flutter/material.dart';

class NFT2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NFTTemplate(
      creator: 'Mad Dog Jones',
      title: 'Déjà Vu #35/200',
      description: "Music by deadmau5. Visuals \nby Mad Dog Jones.",
      numberOfLikes: '55',
      numberOfComments: '10',
      numberOfActivity: '2',
      ProfileImg: UserProfileImg4(),
      userPost: Container(
        child: VideoTile2(),
      ),
    );
  }
}
