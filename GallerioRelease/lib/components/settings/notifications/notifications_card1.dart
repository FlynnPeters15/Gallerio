import 'package:GallerioV1/components/comments/comment_card_template.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img2.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img6.dart';

import 'package:flutter/material.dart';

class NotificationsCard1 extends StatelessWidget {
  const NotificationsCard1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommentCardTemplate(
      CardText: "Liked your NFT titled The Open Hand",
      Date: "2/22/22",
      ProfileImg: UserProfileImg2(),
    );
  }
}
