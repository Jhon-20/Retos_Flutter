import 'package:flutter/material.dart';

class Subtitles extends StatelessWidget {
  const Subtitles(
      {Key? key, required this.text, this.marginLeft, this.marginRight})
      : super(key: key);
  final String text;
  final double? marginLeft;
  final double? marginRight;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: marginLeft ?? 0, right: marginRight ?? 0),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18.0,
          color: Color.fromRGBO(22, 23, 27, 1),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
