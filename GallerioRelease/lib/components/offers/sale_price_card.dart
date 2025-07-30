import 'package:GallerioV1/components/offers/offer_card_template.dart';

import 'package:flutter/material.dart';

class SalePriceInfo extends StatelessWidget {
  const SalePriceInfo({Key? key}) : super(key: key);

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
              'Purchase Price',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Positioned(
            left: 30,
            top: 50,
            child: Text(
              '1,500',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Positioned(
            top: 48,
            child: Icon(
              Icons.monetization_on_rounded,
            ),
          ),
          Positioned(
            top: 10,
            right: 0,
            child: Container(
              height: 55,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
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
                    top: 18,
                    left: 25,
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
