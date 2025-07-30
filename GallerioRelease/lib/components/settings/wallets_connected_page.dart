import 'package:GallerioV1/components/profile_imgs/profile_img1.dart';
import 'package:GallerioV1/components/settings/meta_mask_wallet.dart';
import 'package:GallerioV1/components/settings/wallet_card.dart';
import 'package:flutter/material.dart';

class WalletsConnectedPage extends StatelessWidget {
  const WalletsConnectedPage({Key? key}) : super(key: key);

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
            'Wallets Connected',
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const SizedBox(
            height: 5,
          ),
          ConnectedWallet1(),
        ],
      ),
    );
  }
}
