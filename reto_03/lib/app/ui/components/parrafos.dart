import 'package:flutter/material.dart';

class Parrafos extends StatelessWidget {
  const Parrafos(
      {Key? key,
      required this.text,
      this.marginLeft,
      this.marginRight,
      this.color,
      this.fontSize})
      : super(key: key);
  final String text;
  final double? marginLeft;
  final double? marginRight;
  final Color? color;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: marginLeft ?? 0, right: marginRight ?? 0),
      child: Text(
        text,
        style: TextStyle(
            fontSize: fontSize ?? 14.0,
            fontWeight: FontWeight.w500,
            color: color ?? Color.fromARGB(255, 75, 75, 75)),
      ),
    );
  }
}
