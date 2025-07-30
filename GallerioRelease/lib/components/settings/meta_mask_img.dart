import 'package:flutter/material.dart';

class MetaMaskImg extends StatefulWidget {
  const MetaMaskImg({Key? key}) : super(key: key);

  @override
  _UserProfileImgState createState() => _UserProfileImgState();
}

class _UserProfileImgState extends State<MetaMaskImg> {
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
                'https://chainstack.com/wp-content/uploads/2020/07/metamask.png',
              ),
            ),
            Positioned(
              left: 15,
              right: 0,
              bottom: 0,
              top: 65,
              child: Text('Meta Mask'),
            )
          ],
        ),
      ),
    );
  }
}
