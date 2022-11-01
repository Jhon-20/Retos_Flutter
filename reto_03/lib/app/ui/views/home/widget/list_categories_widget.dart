import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../components/categories.dart';
import '../../../components/circle_action.dart';

class ListCategoriesWidget extends StatelessWidget {
  const ListCategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        CircleAction(
          color: const Color.fromRGBO(243, 243, 243, 1),
          icon: Container(
              padding: const EdgeInsets.all(15.0),
              child: SvgPicture.asset("lib/app/assets/icons/filter.svg")),
        ),
        const SizedBox(
          width: 15.0,
        ),
        Categories(
          marginRight: 10.0,
          marginleft: 10.0,
          padding: 15.0,
          color: const Color.fromARGB(255, 53, 53, 53),
          imagenRuta: ImagenComponent("lib/app/assets/icons/pasta.png", true),
          // imagenRuta: "",
          texto: "Noodles",
          textColor: Colors.white,
        ),
        Categories(
          marginleft: 10.0, marginRight: 10.0,
          padding: 15.0,
          color: const Color.fromRGBO(243, 243, 243, 1),
          imagenRuta: ImagenComponent("lib/app/assets/icons/taco.png", false),
          // imagenRuta: "",
          texto: "Tacos",
        ),
        Categories(
          marginleft: 10.0, marginRight: 10.0,
          padding: 15.0,
          color: const Color.fromRGBO(243, 243, 243, 1),
          imagenRuta:
              ImagenComponent("lib/app/assets/icons/hamburguesa.png", false),
          // imagenRuta: "",
          texto: "Burguer",
        ),
        Categories(
          marginleft: 10.0, marginRight: 10.0,
          padding: 15.0,
          color: const Color.fromRGBO(243, 243, 243, 1),
          imagenRuta: ImagenComponent("lib/app/assets/icons/pizza.png", false),
          // imagenRuta: "",
          texto: "Pizza",
        ),
      ],
    );
  }

  Image ImagenComponent(String ruta, isActive) {
    return Image(
        image: AssetImage(ruta),
        width: 25.0,
        height: 25.0,
        color: isActive == true
            ? Colors.white
            : const Color.fromRGBO(22, 23, 27, 1));
  }
}
