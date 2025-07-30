import 'package:GallerioV1/components/comments/comment_card_template.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img2.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img3.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img6.dart';
import 'package:GallerioV1/components/profile_imgs/home_profile_img.dart';

import 'package:flutter/material.dart';

class NotificationsCard3 extends StatelessWidget {
  const NotificationsCard3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommentCardTemplate(
      CardText: "Liked you NFT titled Run #196/281",
      Date: "2/22/22",
      ProfileImg: UserProfileImg6(),
    );
  }
}
