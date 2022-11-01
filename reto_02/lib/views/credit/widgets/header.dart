import 'package:app_sell_valtx/views/credit/widgets/card_visa.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      AppBar(
        backgroundColor: const Color.fromARGB(255, 248, 248, 248),
        title: const Text(
          "My Card",
          style: TextStyle(
              color: Color.fromARGB(255, 71, 71, 71),
              fontWeight: FontWeight.w600),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      Container(
        margin: const EdgeInsets.only(top: 15.0, left: 15.0),
        width: double.infinity,
        height: 240.0,
        child: ListView(scrollDirection: Axis.horizontal, children: [
          DottedBorder(
            color: Colors.grey,
            strokeWidth: 1,
            radius: const Radius.circular(12),
            borderType: BorderType.RRect,
            dashPattern: const [12.0],
            child: const SizedBox(
              width: 50.0,
              height: 240.0,
              child: Center(
                  child: FaIcon(FontAwesomeIcons.squarePlus,
                      color: Color.fromARGB(255, 9, 163, 168))),
            ),
          ),
          CardVisa(),
          Container(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              width: 250.0,
              height: 240.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.transparent,
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(15.0),
                    width: 220.0,
                    height: 220.0,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 235, 235, 235),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "M-Card",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 2, 2, 2)),
                                ),
                                SvgPicture.asset(
                                  "assets/icons/visa.svg",
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Balance",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 77, 77, 77)),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "\4.664,63",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "**** 2468",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 77, 77, 77)),
                                ),
                                Text(
                                  "12/24",
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 223, 223, 223)),
                                ),
                              ],
                            )
                          ]),
                    ),
                  ),
                ],
              )),
        ]),
      ),
    ]);
  }
}
