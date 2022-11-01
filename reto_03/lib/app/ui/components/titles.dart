import 'package:flutter/material.dart';

class Titles extends StatelessWidget {
  const Titles({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10.0),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20.0,
          color: Color.fromRGBO(22, 23, 27, 1),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
