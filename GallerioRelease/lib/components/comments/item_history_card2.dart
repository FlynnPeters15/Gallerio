import 'package:GallerioV1/components/comments/comment_card_template.dart';
import 'package:GallerioV1/components/comments/item_history_template.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img2.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img6.dart';

import 'package:flutter/material.dart';

class ItemHistoryCard2 extends StatelessWidget {
  const ItemHistoryCard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ItemHistoryCardTemplate(
        Icon: MintIcon(),
        Date: "3/15/22",
        CardText: "Item Sold to address: 0x934EsA7NgrYR...");
  }
}

class MintIcon extends StatelessWidget {
  const MintIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.monetization_on,
      size: 40,
    );
  }
}
