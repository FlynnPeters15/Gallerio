import 'package:flutter/material.dart';

class FollowButton extends StatelessWidget {
  final onTap;
  bool isFollowButtonPressed;
  FollowButton({this.onTap, required this.isFollowButtonPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            height: 40,
            width: 120,
            decoration: BoxDecoration(
              color: isFollowButtonPressed ? Colors.grey[850] : Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      isFollowButtonPressed
                          ? Text(
                              'Following',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white),
                            )
                          : Text('Follow',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
