import 'package:flutter/material.dart';

class HomeProfileImg extends StatefulWidget {
  const HomeProfileImg({Key? key}) : super(key: key);

  @override
  _UserProfileImgState createState() => _UserProfileImgState();
}

class _UserProfileImgState extends State<HomeProfileImg> {
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
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3zo4EAEtqcvbiwxdlgnNUUgMrqbIPezOkDKeoFLRLdoCamQ3t23r8C5hePqGbqgROu_k&usqp=CAU',
              ),
            ),
            Positioned(
              left: 12,
              right: 0,
              bottom: 0,
              top: 65,
              child: Text(
                'Matt',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
