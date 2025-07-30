import 'package:GallerioV1/components/comments/comment_card1.dart';
import 'package:GallerioV1/components/comments/comment_card2.dart';
import 'package:GallerioV1/components/comments/make_comment_card.dart';
import 'package:flutter/material.dart';

class CommentBuildSheet extends StatelessWidget {
  const CommentBuildSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 15,
        ),
        Expanded(
          child: ListView(
            children: [
              commentCard1(),
              commentCard2(),
              commentCard1(),
              commentCard2(),
            ],
          ),
        ),
        MakeComment(),
      ],
    );
  }
}
