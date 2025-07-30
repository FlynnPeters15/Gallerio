import 'package:GallerioV1/components/profile_imgs/profile_img1.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img2.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img3.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img4.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img5.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img6.dart';
import 'package:flutter/material.dart';

class ProfilePicScroll extends StatefulWidget {
  const ProfilePicScroll({Key? key}) : super(key: key);

  @override
  State<ProfilePicScroll> createState() => _ProfilePicScrollState();
}

class _ProfilePicScrollState extends State<ProfilePicScroll> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          UserProfileImg1(),
          UserProfileImg2(),
          UserProfileImg3(),
          UserProfileImg4(),
          UserProfileImg5(),
          UserProfileImg6(),
        ],
      ),
    );
  }
}
