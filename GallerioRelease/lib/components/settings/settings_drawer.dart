import 'package:GallerioV1/components/profile_imgs/home_profile_img.dart';
import 'package:GallerioV1/components/settings/deposit_withdraw_buttons.dart';
import 'package:GallerioV1/components/settings/edit_profile_card.dart';
import 'package:GallerioV1/components/settings/top_profile_card.dart';
import 'package:GallerioV1/components/settings/wallet_card.dart';
import 'package:flutter/material.dart';

class SettingsDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        TopProfileCard(),
        Expanded(
          child: ListView(
            children: [
              WalletCard(),
              EditProfileCard(),
              Container(
                height: 100,
                margin: const EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Positioned(
                      left: 50,
                      top: 20,
                      child: Text(
                        'Log Out',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.red),
                      ),
                    ),
                    Positioned(
                      left: 18,
                      top: 18,
                      child: Transform.rotate(
                        angle: 3.14,
                        child: Icon(
                          Icons.logout,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
