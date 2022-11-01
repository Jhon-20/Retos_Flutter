import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardVisa extends StatelessWidget {
  const CardVisa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0),
      width: 220.0,
      height: 240.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.transparent,
        image: const DecorationImage(
            image: AssetImage("assets/images/banner_header.png"),
            fit: BoxFit.cover),
      ),
      child: cardVisaComponent("X-Card", "assets/icons/visa.svg", "Balance",
          "4,664,63", "**** 2468", "12/24"),
    );
  }

  Container cardVisaComponent(String nameCard, String routeImage,
      String balance, String money, String nroTarjeta, String fecha) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  nameCard,
                  style: const TextStyle(color: Colors.white),
                ),
                SvgPicture.asset(routeImage)
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  balance,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 223, 223, 223)),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  money,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  nroTarjeta,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 223, 223, 223)),
                ),
                Text(
                  fecha,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 223, 223, 223)),
                ),
              ],
            )
          ]),
    );
  }
}
