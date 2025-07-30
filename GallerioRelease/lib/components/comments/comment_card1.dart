import 'package:GallerioV1/components/comments/comment_card_template.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img6.dart';

import 'package:flutter/material.dart';

class commentCard1 extends StatelessWidget {
  const commentCard1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommentCardTemplate(
      CardText: "This NFT is so cool",
      Date: "2/22/22",
      ProfileImg: UserProfileImg6(),
    );
  }
}
