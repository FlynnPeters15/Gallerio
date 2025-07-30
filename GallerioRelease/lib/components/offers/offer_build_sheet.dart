import 'dart:math';

import 'package:GallerioV1/components/offers/make_offer_card.dart';
import 'package:GallerioV1/components/offers/offer_card1.dart';
import 'package:GallerioV1/components/offers/offer_card2.dart';
import 'package:GallerioV1/components/offers/offer_card3.dart';
import 'package:GallerioV1/components/offers/offer_card4.dart';
import 'package:GallerioV1/components/offers/sale_price_card.dart';
import 'package:flutter/material.dart';

class OfferBuildSheet extends StatelessWidget {
  const OfferBuildSheet({Key? key}) : super(key: key);

  get padding => null;

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
              OfferCard1(),
              OfferCard3(),
              OfferCard2(),
              OfferCard4(),
              OfferCard2(),
              OfferCard3(),
            ],
          ),
        ),
        SalePriceInfo(),
        MakeOffer(),
      ],
    );
  }
}
