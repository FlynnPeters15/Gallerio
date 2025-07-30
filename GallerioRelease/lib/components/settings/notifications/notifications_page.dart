import 'package:GallerioV1/components/profile_imgs/profile_img1.dart';
import 'package:GallerioV1/components/settings/notifications/notifications_card1.dart';
import 'package:GallerioV1/components/settings/notifications/notifications_card2.dart';
import 'package:GallerioV1/components/settings/notifications/notifications_card3.dart';
import 'package:GallerioV1/components/settings/wallet_card.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//Top App Bar
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 5.0,
        title: const Center(
          child: Text(
            'Notifications',
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const SizedBox(
            height: 5,
          ),
          NotificationsCard1(),
          NotificationsCard2(),
          NotificationsCard3(),
        ],
      ),
    );
  }
}
