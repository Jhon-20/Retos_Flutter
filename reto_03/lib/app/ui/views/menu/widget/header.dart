import 'package:app_reto_03/app/ui/views/menu/widget/header_appbar_category.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "#imagenes",
      child: Container(
          width: double.infinity,
          height: 350.0,
          padding: const EdgeInsets.only(
            top: 50.0,
            left: 20.0,
            right: 20.0,
            bottom: 30.0,
          ),
          decoration: const BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
                image: AssetImage("lib/app/assets/images/ramen.jpg"),
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              HeaderAppbarCategory(),
            ],
          )),
    );
  }
}
