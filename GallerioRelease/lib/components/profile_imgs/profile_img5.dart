import 'package:flutter/material.dart';

class UserProfileImg5 extends StatefulWidget {
  const UserProfileImg5({Key? key}) : super(key: key);

  @override
  _UserProfileImgState createState() => _UserProfileImgState();
}

class _UserProfileImgState extends State<UserProfileImg5> {
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
                'https://media.istockphoto.com/photos/millennial-male-team-leader-organize-virtual-workshop-with-employees-picture-id1300972574?b=1&k=20&m=1300972574&s=170667a&w=0&h=2nBGC7tr0kWIU8zRQ3dMg-C5JLo9H2sNUuDjQ5mlYfo=',
              ),
            ),
            Positioned(
              left: 15,
              right: 0,
              bottom: 0,
              top: 65,
              child: Text('Mike'),
            )
          ],
        ),
      ),
    );
  }
}
