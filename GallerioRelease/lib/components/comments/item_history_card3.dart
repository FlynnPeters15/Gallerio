import 'package:GallerioV1/components/comments/comment_card_template.dart';
import 'package:GallerioV1/components/comments/item_history_template.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img2.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img6.dart';

import 'package:flutter/material.dart';

class ItemHistoryCard3 extends StatelessWidget {
  const ItemHistoryCard3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ItemHistoryCardTemplate(
        Icon: MintIcon(),
        Date: "4/12/22",
        CardText: "Transfered to Address: 0xC9bA5asA7N... ");
  }
}

class MintIcon extends StatelessWidget {
  const MintIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.arrow_circle_up_outlined,
      size: 40,
    );
  }
}
