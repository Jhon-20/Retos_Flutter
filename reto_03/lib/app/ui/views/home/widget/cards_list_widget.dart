import 'package:flutter/material.dart';

import 'card_widget.dart';

class CardsListWidget extends StatelessWidget {
  const CardsListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imagenes = [
      "lib/app/assets/images/comida02.jpg",
      "lib/app/assets/images/ramen.jpg",
      "lib/app/assets/images/comida03.jpg",
      "lib/app/assets/images/comida04.jpg",
      "lib/app/assets/images/comida05.jpg",
      "lib/app/assets/images/comida06.jpg"
    ];
    List<String> time = [
      "30-40 min",
      "45-50 min",
      "50-50 min",
      "60-50 min",
      "10-50 min",
      "12-50 min"
    ];
    List<String> name = [
      "Noodles & Ramen",
      "Hamburguesa",
      "Noodles & Ramen",
      "Comida",
      "Chifa",
      "Pollo a la Braza"
    ];
    List<String> calle = [
      "812 Avenue, 153673",
      "612 Trujillo, 153673",
      "612 Trujillo, 153673",
      "612 Trujillo, 153673",
      "612 Trujillo, 153673",
      "612 Trujillo, 153673",
      "612 Trujillo, 153673"
    ];
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: name.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Hero(
                tag: {imagenes[index]},
                child: CardWidget(
                  time: time[index],
                  subtitle: name[index],
                  description: calle[index],
                  imagenComida: imagenes[index],
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/menu',
                    );
                  },
                ),
              ),
              // SizedBox(
              //   width: 15.0,
              // ),
            ],
          );
        });
  }
}
