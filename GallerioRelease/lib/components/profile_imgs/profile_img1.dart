import 'package:GallerioV1/pages/other_user_profile.dart';
import 'package:flutter/material.dart';

class UserProfileImg1 extends StatefulWidget {
  const UserProfileImg1({Key? key}) : super(key: key);

  @override
  _UserProfileImgState createState() => _UserProfileImgState();
}

class _UserProfileImgState extends State<UserProfileImg1> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          height: 100,
          child: Stack(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  'https://i.pinimg.com/474x/49/73/72/49737247376df0b8dd243aba892922ef--professional-headshots-profile-pictures.jpg',
                ),
              ),
              Positioned(
                left: 15,
                right: 0,
                bottom: 0,
                top: 65,
                child: Text('Alice'),
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => OtherUserProfilePage()));
      },
    );
  }
}
