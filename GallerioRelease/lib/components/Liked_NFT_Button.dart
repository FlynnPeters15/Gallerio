import 'package:flutter/material.dart';

class LikedButton extends StatelessWidget {
  final onTap;
  bool isLikedButtonPressed;
  LikedButton({this.onTap, required this.isLikedButtonPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: isLikedButtonPressed
          ? Icon(
              Icons.favorite_rounded,
              size: 30,
            )
          : Icon(
              Icons.favorite_border_rounded,
              size: 30,
            ),
    );
  }
}
