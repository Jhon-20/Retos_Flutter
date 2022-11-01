import 'package:app_reto_03/app/ui/views/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../components/circle_action.dart';

class HeaderAppbarCategory extends StatelessWidget {
  const HeaderAppbarCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAction(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeView()),
            );
          },
          color: const Color.fromRGBO(22, 23, 27, 1),
          icon: Container(
              padding: const EdgeInsets.all(18.0),
              child: SvgPicture.asset(
                "lib/app/assets/icons/arrow_volver.svg",
                color: Colors.white,
              )),
        ),
        CircleAction(
          color: const Color.fromRGBO(22, 23, 27, 1),
          icon: Container(
              padding: const EdgeInsets.all(15.0),
              child: SvgPicture.asset(
                "lib/app/assets/icons/line_more.svg",
                color: Colors.white,
              )),
        ),
      ],
    );
  }
}
