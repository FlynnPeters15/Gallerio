import 'package:GallerioV1/components/offers/offer_card_template.dart';

import 'package:flutter/material.dart';

class HistoryLabel extends StatelessWidget {
  const HistoryLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      margin: const EdgeInsets.all(10),
      child: Stack(
        children: [
          Positioned(
            top: 2,
            child: Text(
              'Item History:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
