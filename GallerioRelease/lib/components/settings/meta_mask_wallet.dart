import 'package:GallerioV1/components/comments/comment_card_template.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img2.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img3.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img6.dart';
import 'package:GallerioV1/components/settings/meta_mask_img.dart';

import 'package:flutter/material.dart';

class ConnectedWallet1 extends StatelessWidget {
  const ConnectedWallet1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommentCardTemplate(
      CardText: "0xC9bA55CbF29A1da5A0527EA69...",
      Date: "2/22/22",
      ProfileImg: MetaMaskImg(),
    );
  }
}
