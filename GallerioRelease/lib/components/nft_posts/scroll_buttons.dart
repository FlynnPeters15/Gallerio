import 'package:flutter/material.dart';

//used to correclty aline icons ontop of the image within the discover page
class ScrollButtons extends StatefulWidget {
  final icon;
  final String number;

  ScrollButtons({this.icon, required this.number});

  @override
  State<ScrollButtons> createState() => _ScrollButtonsState();
}

class _ScrollButtonsState extends State<ScrollButtons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0),
      child: Column(
        children: [
          widget.icon,
          SizedBox(
            height: 0,
          ),
          Text(widget.number),
        ],
      ),
    );
  }
}
