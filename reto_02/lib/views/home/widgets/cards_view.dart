import 'package:flutter/material.dart';

class CardsView extends StatelessWidget {
  const CardsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        builCardComponent(const AssetImage("assets/icons/figma.png"), "Figma",
            "Febrary, 2022", "\$433,00", "Suscription", true),
        builCardComponent(const AssetImage("assets/icons/netflix.png"),
            "Netflix", "Febrary, 2022", "\$4,00", "Suscription", false),
      ],
    );
  }

  Container builCardComponent(
    ImageProvider image,
    String title,
    String fecha,
    String money,
    String textSuscription,
    isShadow,
  ) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      padding: const EdgeInsets.only(top: 15, bottom: 15, left: 20, right: 20),
      width: double.infinity,
      height: 90.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          boxShadow: isShadow == true
              ? const [
                  BoxShadow(
                      color: Color.fromARGB(255, 228, 228, 228),
                      blurRadius: 6.0,
                      offset: Offset(0, 15.0))
                ]
              : const [
                  BoxShadow(
                      color: Color.fromARGB(255, 228, 228, 228),
                      blurRadius: 0.0,
                      offset: Offset(0, 0.0))
                ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Container(
              width: 60.0,
              height: 150.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: image,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 20.0,
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    fecha,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 133, 133, 133),
                        fontSize: 12.0),
                  ),
                ]),
          ]),
          Row(children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    money,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Color.fromARGB(255, 25, 156, 117)),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    textSuscription,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 133, 133, 133),
                        fontSize: 12.0),
                  ),
                ]),
          ]),
        ],
      ),
    );
  }
}
