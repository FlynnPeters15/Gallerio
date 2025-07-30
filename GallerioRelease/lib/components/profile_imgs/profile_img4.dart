import 'package:flutter/material.dart';

class UserProfileImg4 extends StatefulWidget {
  const UserProfileImg4({Key? key}) : super(key: key);

  @override
  _UserProfileImgState createState() => _UserProfileImgState();
}

class _UserProfileImgState extends State<UserProfileImg4> {
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
                'https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg.jpg',
              ),
            ),
            Positioned(
              left: 15,
              right: 0,
              bottom: 0,
              top: 65,
              child: Text('Anna'),
            )
          ],
        ),
      ),
    );
  }
}
