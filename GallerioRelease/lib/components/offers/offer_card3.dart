import 'package:GallerioV1/components/offers/offer_card_template.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img2.dart';

import 'package:flutter/material.dart';

class OfferCard3 extends StatelessWidget {
  const OfferCard3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OfferCardTemplate(
      Offer: 'Made an Offer for 350 USD',
      OfferDate: '1/28/22',
      OffereeProfileImg: UserProfileImg2(),
    );
  }
}
