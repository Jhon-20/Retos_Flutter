import 'package:flutter/material.dart';

class CircleAction extends StatelessWidget {
  const CircleAction(
      {Key? key, this.color, this.icon, this.rutaImagen, this.onTap})
      : super(key: key);

  final Color? color;
  final Widget? icon;
  final DecorationImage? rutaImagen;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 60.0,
        height: 60.0,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(50.0),
            image: rutaImagen),
        child: icon,
        // child: Icon(icon, color: Colors.white),
      ),
    );
  }
}
