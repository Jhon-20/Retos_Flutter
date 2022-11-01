import 'package:flutter/material.dart';
import '../../../components/grid_card.dart';
import '../../../components/parrafos.dart';
import '../../../components/titles.dart';
import 'list_categori_menu.dart';

class DraggableWidget extends StatelessWidget {
  const DraggableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> items = const [
      GridCard(rutaImagen: "lib/app/assets/images/ramen.jpg"),
      GridCard(rutaImagen: "lib/app/assets/images/comida02.jpg"),
      GridCard(rutaImagen: "lib/app/assets/images/comida03.jpg"),
      GridCard(rutaImagen: "lib/app/assets/images/comida04.jpg"),
      GridCard(rutaImagen: "lib/app/assets/images/comida05.jpg"),
      GridCard(rutaImagen: "lib/app/assets/images/comida06.jpg"),
    ];

    return DraggableScrollableSheet(
        initialChildSize: 0.6,
        maxChildSize: 1,
        minChildSize: 0.6,
        snap: true,
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            width: double.infinity,
            padding: const EdgeInsets.only(
              top: 20.0,
              left: 10.0,
              right: 10.0,
            ),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0))),
            child: ListView(
              controller: scrollController,
              children: [
                const Titles(
                  text: "Noodles & Ramen",
                ),
                const Parrafos(
                  marginLeft: 15.0,
                  text: "812 Avenue, 153673",
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Parrafos(
                      marginLeft: 15.0,
                      text: "Delivery time",
                    ),
                    Parrafos(
                      marginRight: 15.0,
                      text: "30-40 minutes",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Parrafos(
                      marginLeft: 15.0,
                      text: "Delivery cost",
                    ),
                    Parrafos(
                      marginRight: 15.0,
                      text: "\$ 5-10",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                const ListCategoriMenu(),
                const SizedBox(height: 20.0),
                GridView.builder(
                    scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 0.8,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                    ),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Container(child: items[index]);
                    }),
              ],
            ),
          );
        });
  }

  _onWidgetDidBuild(Function callback) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      callback();
    });
  }
}
