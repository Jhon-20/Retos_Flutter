import 'package:app_sell_valtx/views/home/widgets/cards_view.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(
          left: 30.0,
          right: 25.0,
        ),
        width: double.infinity,
        // color: const Color.fromRGBO(245, 245, 245, 1),
        child: ListView(
          children: [
            const Text(
              "Send again",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                height: 50,
                child: (Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 10.0,
                                color: Color.fromARGB(255, 235, 235, 235),
                                offset: Offset(0, 12.0))
                          ]),
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: HeroIcon(
                          HeroIcons.magnifyingGlass,
                          size: 16.0,
                          color: Color.fromARGB(255, 66, 66, 66),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(7.0),
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 40.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage("assets/images/person2.png"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Tiana Saris",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10.0),
                                ),
                                Text(
                                  '\$233.0',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 209, 209, 209),
                                      fontSize: 10.0),
                                ),
                              ]),
                          const SizedBox(
                            width: 10.0,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(7.0),
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 40.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage("assets/images/person1.png"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Schieifer",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10.0),
                                ),
                                Text(
                                  '\$800',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 209, 209, 209),
                                      fontSize: 10.0),
                                ),
                              ]),
                          const SizedBox(
                            width: 10.0,
                          ),
                        ],
                      ),
                    )
                  ],
                ))),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Recent transactions",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Color.fromARGB(255, 255, 129, 129)),
                ),
              ],
            ),
            const CardsView(),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
