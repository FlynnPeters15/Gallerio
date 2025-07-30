import 'package:GallerioV1/components/offers/offer_card_template.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img1.dart';
import 'package:flutter/material.dart';

class OfferCard1 extends StatelessWidget {
  const OfferCard1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OfferCardTemplate(
      Offer: 'Made an Offer for 400 USD',
      OfferDate: '1/28/22',
      OffereeProfileImg: UserProfileImg1(),
    );
  }
}
