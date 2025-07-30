import 'package:GallerioV1/components/settings/settings_drawer.dart';
import 'package:GallerioV1/components/offers/offer_card1.dart';
import 'package:GallerioV1/components/offers/offer_card2.dart';
import 'package:GallerioV1/components/offers/offer_card3.dart';
import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SettingsDrawer(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 5.0,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_active_rounded),
            onPressed: () => {},
          ),
        ],
        title: const Center(
          child: Text(
            'Offers',
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const SizedBox(height: 10),
          OfferCard1(),
          OfferCard2(),
          OfferCard3(),
        ],
      ),
    );
  }
}
