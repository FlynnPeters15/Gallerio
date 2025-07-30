import 'package:flutter/material.dart';

class UserProfileImg2 extends StatefulWidget {
  const UserProfileImg2({Key? key}) : super(key: key);

  @override
  _UserProfileImgState createState() => _UserProfileImgState();
}

class _UserProfileImgState extends State<UserProfileImg2> {
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
                'https://images.unsplash.com/photo-1600180758890-6b94519a8ba6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cHJvZmVzc2lvbmFsJTIwcHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80',
              ),
            ),
            Positioned(
              left: 15,
              right: 0,
              bottom: 0,
              top: 65,
              child: Text('John'),
            )
          ],
        ),
      ),
    );
  }
}
