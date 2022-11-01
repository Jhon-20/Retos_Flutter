import 'package:app_reto_03/app/ui/components/card_imagen.dart';
import 'package:app_reto_03/app/ui/components/circle_action.dart';
import 'package:app_reto_03/app/ui/components/parrafos.dart';
import 'package:app_reto_03/app/ui/components/subtitles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'categories.dart';

class GridCard extends StatelessWidget {
  const GridCard({Key? key, required this.rutaImagen}) : super(key: key);
  final String rutaImagen;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            shadowColor: Colors.transparent),
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  width: double.infinity,
                  height: 560,
                  child: Column(
                    children: [
                      Container(
                        width: 70.0,
                        height: 5.0,
                        margin: const EdgeInsets.only(bottom: 10.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      Expanded(
                          child: Container(
                        height: 100.0,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30.0),
                                topRight: Radius.circular(30.0))),
                        child: (Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 230.0,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(30.0),
                                      topRight: Radius.circular(30.0)),
                                  image: DecorationImage(
                                      image: AssetImage(rutaImagen),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 18.0,
                                  right: 18.0,
                                  top: 20.0,
                                  bottom: 20.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Parrafos(
                                      text:
                                          "Wheat noodles served in a meat-based broth, flavored with soy sauce and toppings(slice pork, nori, menma and scallions)",
                                    ),
                                    const SizedBox(height: 15.0),
                                    const Subtitles(
                                      text: "Nutritional value plate",
                                      marginLeft: 0,
                                    ),
                                    const SizedBox(
                                      height: 15.0,
                                    ),
                                    Container(
                                      padding:
                                          const EdgeInsets.only(right: 30.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Parrafos(
                                                text: "380",
                                              ),
                                              Parrafos(
                                                  text: "Kcal", fontSize: 12.0)
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Parrafos(
                                                text: "13.1",
                                              ),
                                              Parrafos(
                                                  text: "proteints",
                                                  fontSize: 12.0)
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Parrafos(
                                                text: "20,2",
                                              ),
                                              Parrafos(
                                                  text: "fats", fontSize: 12.0)
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Parrafos(
                                                text: "35.6",
                                              ),
                                              Parrafos(
                                                  text: "carbs", fontSize: 12.0)
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 25.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const CircleAction(
                                          color:
                                              Color.fromRGBO(243, 243, 243, 1),
                                          icon: Icon(Icons.add),
                                        ),
                                        CircleAction(
                                          color: const Color.fromRGBO(
                                              243, 243, 243, 1),
                                          icon: Container(
                                              padding:
                                                  const EdgeInsets.all(15.0),
                                              child: SvgPicture.asset(
                                                  "lib/app/assets/icons/substract.svg")),
                                        ),
                                        Container(
                                          width: 180.0,
                                          height: 60.0,
                                          padding: const EdgeInsets.all(15.0),
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(50.0)),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: const [
                                                Parrafos(
                                                  text: "Add to cart",
                                                  color: Colors.white,
                                                ),
                                                Parrafos(
                                                  text: "\$4,99",
                                                  color: Colors.white,
                                                )
                                              ]),
                                        )
                                      ],
                                    )
                                  ]),
                            )
                          ],
                        )),
                      ))
                    ],
                  ),
                );
              });
        },
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CardImagen(
            imagenComida: rutaImagen,
            height: 100.0,
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Parrafos(
            text: "Clasic ramen with chicken and egg",
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Categories(
            texto: "\$ 4,99",
            color: Color.fromRGBO(243, 243, 243, 1),
            padding: 10.0,
          ),
        ]),
      ),
    ]);
  }
}
