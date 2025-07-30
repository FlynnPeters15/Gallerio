import 'package:GallerioV1/components/offers/offer_card_template.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img1.dart';
import 'package:GallerioV1/components/settings/wallets_connected_page.dart';
import 'package:flutter/material.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 75,
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
              left: 20,
              top: 20,
              child: Icon(
                Icons.account_balance_wallet,
                size: 30,
              ),
            ),
            Positioned(
              left: 60,
              top: 26,
              child: Text(
                'NFT Wallets Connected',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
            ),
            Positioned(
              right: 20,
              top: 25,
              child: Transform.rotate(
                angle: 3.1,
                child: Icon(Icons.arrow_back_ios_new_rounded),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => WalletsConnectedPage()));
      },
    );
  }
}
