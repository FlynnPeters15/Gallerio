import 'package:GallerioV1/components/comments/comment_card_template.dart';
import 'package:GallerioV1/components/comments/item_history_template.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img2.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img6.dart';

import 'package:flutter/material.dart';

class ItemHistoryCard1 extends StatelessWidget {
  const ItemHistoryCard1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ItemHistoryCardTemplate(
        Icon: MintIcon(),
        Date: "2/22/22",
        CardText: "Item Minted by address: 0xF29A1da5A...");
  }
}

class MintIcon extends StatelessWidget {
  const MintIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.format_paint_rounded,
      size: 40,
    );
  }
}
