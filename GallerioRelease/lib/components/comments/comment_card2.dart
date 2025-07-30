import 'package:GallerioV1/components/comments/comment_card_template.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img5.dart';

import 'package:flutter/material.dart';

class commentCard2 extends StatelessWidget {
  const commentCard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommentCardTemplate(
      CardText: "Cool piece",
      Date: "1/04/22",
      ProfileImg: UserProfileImg5(),
    );
  }
}
