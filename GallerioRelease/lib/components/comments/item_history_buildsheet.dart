import 'package:GallerioV1/components/comments/comment_card1.dart';
import 'package:GallerioV1/components/comments/comment_card2.dart';
import 'package:GallerioV1/components/comments/item_history_card1.dart';
import 'package:GallerioV1/components/comments/item_history_card2.dart';
import 'package:GallerioV1/components/comments/item_history_card3.dart';
import 'package:GallerioV1/components/comments/item_history_label.dart';
import 'package:GallerioV1/components/comments/make_comment_card.dart';
import 'package:flutter/material.dart';

class HistoryBuildSheet extends StatelessWidget {
  const HistoryBuildSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 15,
        ),
        HistoryLabel(),
        Expanded(
          child: ListView(
            children: [
              ItemHistoryCard3(),
              ItemHistoryCard2(),
              ItemHistoryCard1(),
            ],
          ),
        ),
      ],
    );
  }
}
