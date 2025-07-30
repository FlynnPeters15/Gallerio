import 'package:GallerioV1/components/offers/offer_card_template.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img4.dart';

import 'package:flutter/material.dart';

class OfferCard2 extends StatelessWidget {
  const OfferCard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OfferCardTemplate(
      Offer: 'Made an Offer for 200 USD',
      OfferDate: '1/28/22',
      OffereeProfileImg: UserProfileImg4(),
    );
  }
}
