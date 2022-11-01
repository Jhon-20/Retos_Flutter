import 'package:app_reto_03/app/ui/components/circle_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderAppbarHome extends StatelessWidget {
  const HeaderAppbarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAction(
          color: const Color.fromRGBO(22, 23, 27, 1),
          icon: Container(
              padding: const EdgeInsets.all(15.0),
              child: SvgPicture.asset(
                "lib/app/assets/icons/menu.svg",
                color: Colors.white,
              )),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Text(
              "deliver to",
              style: TextStyle(color: Color.fromRGBO(56, 56, 56, 1)),
            ),
            Text(
              "Home",
              style: TextStyle(
                  color: Color.fromRGBO(22, 23, 27, 1),
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        const CircleAction(
          rutaImagen: DecorationImage(
              image: AssetImage("lib/app/assets/images/person2.png")),
          color: Colors.blue,
        ),
      ],
    );
  }
}
