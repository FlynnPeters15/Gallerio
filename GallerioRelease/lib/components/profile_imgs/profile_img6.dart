import 'package:flutter/material.dart';

class UserProfileImg6 extends StatefulWidget {
  const UserProfileImg6({Key? key}) : super(key: key);

  @override
  _UserProfileImgState createState() => _UserProfileImgState();
}

class _UserProfileImgState extends State<UserProfileImg6> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 100,
        child: Stack(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                'https://images.summitmedia-digital.com/cosmo/images/2020/08/26/julia-barretto-profile-picture-idea-1598430021.jpg',
              ),
            ),
            Positioned(
              left: 15,
              right: 0,
              bottom: 0,
              top: 65,
              child: Text('Anya'),
            )
          ],
        ),
      ),
    );
  }
}
