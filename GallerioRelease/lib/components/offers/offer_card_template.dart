import 'package:flutter/material.dart';

class OfferCardTemplate extends StatelessWidget {
  final OffereeProfileImg;
  final String OfferDate;
  final String Offer;

  OfferCardTemplate({
    required this.OffereeProfileImg,
    required this.OfferDate,
    required this.Offer,
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
          Positioned(
            top: 10,
            child: OffereeProfileImg,
          ),
          Positioned(
            right: 10,
            top: 10,
            child: Text(
              OfferDate,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
            ),
          ),
          Positioned(
            left: 100,
            top: 40,
            child: Text(
              Offer,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
