import 'package:app_reto_03/app/ui/components/categories.dart';
import 'package:flutter/material.dart';

class ListCategoriMenu extends StatelessWidget {
  const ListCategoriMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Categories(
          texto: "Clasicc",
          color: Color.fromRGBO(243, 243, 243, 1),
          padding: 15.0,
        ),
        Categories(
          texto: "Experimental",
          padding: 15.0,
        ),
        Categories(
          texto: "Speciality",
          padding: 15.0,
        ),
      ],
    );
  }
}
