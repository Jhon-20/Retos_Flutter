import 'package:app_reto_03/app/ui/components/parrafos.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
    this.imagenRuta,
    this.color,
    required this.texto,
    this.width,
    this.height,
    this.padding,
    this.marginleft,
    this.marginRight,
    this.onTap,
    this.textColor,
  }) : super(key: key);

  final Widget? imagenRuta;
  final Color? color;
  final String texto;
  final double? width;
  final double? height;
  final double? padding;
  final double? marginleft;
  final double? marginRight;
  final Color? textColor;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        margin: EdgeInsets.only(right: marginRight ?? 0),
        padding: EdgeInsets.all(padding ?? 0.0),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(50.0)),
        child: Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              child: imagenRuta,
            ),
            Container(
              margin: EdgeInsets.only(left: marginleft ?? 0),
              child: Parrafos(
                color: textColor ?? const Color.fromARGB(255, 75, 75, 75),
                text: texto,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
