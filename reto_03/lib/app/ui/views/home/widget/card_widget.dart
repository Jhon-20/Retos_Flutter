import 'package:app_reto_03/app/ui/components/parrafos.dart';
import 'package:app_reto_03/app/ui/components/subtitles.dart';
import 'package:flutter/material.dart';

import '../../../components/card_imagen.dart';
import '../../../components/categories.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(
      {Key? key,
      required this.imagenComida,
      required this.subtitle,
      required this.description,
      required this.time,
      this.onTap})
      : super(key: key);
  final String imagenComida;
  final String subtitle;
  final String description;
  final String time;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.zero,
        width: MediaQuery.of(context).size.width / 1 - 30,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CardImagen(
            onTap: onTap,
            imagenComida: imagenComida.toString(),
            height: 170.0,
            minutes: Stack(
              children: [
                Categories(
                  width: 100.0,
                  height: 40.0,
                  color: const Color.fromRGBO(243, 243, 243, 1),
                  texto: time,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
            width: 15.0,
          ),
          Subtitles(
            marginLeft: 10.0,
            text: subtitle,
          ),
          Parrafos(
            text: description,
            marginLeft: 10.0,
          ),
          const SizedBox(height: 10.0),
        ]),
      ),
    );
  }
}
