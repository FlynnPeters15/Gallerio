import 'package:flutter/material.dart';

class ItemHistoryCardTemplate extends StatelessWidget {
  final Icon;
  final String Date;
  final String CardText;

  ItemHistoryCardTemplate({
    required this.Icon,
    required this.Date,
    required this.CardText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
              color: Colors.black,
              offset: Offset(5.0, 5.0),
              blurRadius: 15.0,
              spreadRadius: 1.0),
          BoxShadow(
            color: Colors.grey.shade800,
            offset: Offset(-4, -4),
            blurRadius: 15,
            spreadRadius: 1,
          )
        ],
      ),
      child: Stack(
        children: [
          Positioned(top: 30, left: 15, child: Icon),
          Positioned(
            right: 10,
            top: 10,
            child: Text(
              Date,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
            ),
          ),
          Positioned(
            left: 80,
            top: 45,
            child: Text(
              CardText,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
