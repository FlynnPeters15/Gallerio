import 'package:GallerioV1/components/offers/offer_card_template.dart';

import 'package:flutter/material.dart';

class MakeComment extends StatelessWidget {
  const MakeComment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      margin: const EdgeInsets.all(10),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            child: Text(
              '',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 30,
                      child: const Icon(Icons.chat_bubble_outline_rounded),
                    ),
                  ),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Comment'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
