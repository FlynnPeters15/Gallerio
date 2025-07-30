import 'package:GallerioV1/components/profile_imgs/home_profile_img.dart';
import 'package:flutter/material.dart';

class TopProfileCard extends StatelessWidget {
  const TopProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      margin: const EdgeInsets.fromLTRB(10, 50, 10, 0),
      child: Stack(
        children: [
          Positioned(
            top: 15,
            child: HomeProfileImg(),
          ),
          Positioned(
            right: 40,
            top: 25,
            child: Text(
              '456',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ),
          Positioned(
            right: 25,
            top: 45,
            child: Text(
              'Followers',
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
            ),
          ),
          Positioned(
            left: 120,
            top: 25,
            child: Text(
              '50',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ),
          Positioned(
            left: 100,
            top: 45,
            child: Text(
              'Followers',
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
