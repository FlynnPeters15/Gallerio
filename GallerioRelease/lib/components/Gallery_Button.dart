import 'package:flutter/material.dart';

class GalleryButton extends StatelessWidget {
  final onTap;
  bool isGalleryButtonPressed;
  GalleryButton({this.onTap, required this.isGalleryButtonPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: isGalleryButtonPressed
          ? Icon(
              Icons.image_outlined,
              size: 30,
            )
          : Icon(
              Icons.image,
              size: 30,
            ),
    );
  }
}
