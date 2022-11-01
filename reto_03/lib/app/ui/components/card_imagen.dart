import 'package:flutter/material.dart';

class CardImagen extends StatelessWidget {
  const CardImagen(
      {Key? key,
      required this.imagenComida,
      required this.height,
      this.texto,
      this.minutes,
      this.onTap})
      : super(key: key);
  final String imagenComida;
  final double height;
  final String? texto;
  final Widget? minutes;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20.0),
          margin: const EdgeInsets.only(right: 5.0, left: 5.0),
          height: height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imagenComida.toString()),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(20.0)),
          child: minutes),
    );
  }
}
