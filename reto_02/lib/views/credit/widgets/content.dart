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
        child: ListView(
          children: [
            const Text(
              "Monthly limits",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 10.0, top: 15.0, bottom: 15.0),
                width: double.infinity,
                height: 130.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(255, 228, 228, 228),
                          blurRadius: 6.0,
                          offset: Offset(0, 15.0))
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: const [
                      SizedBox(width: 10.0),
                      Text(
                        "Ammount:",
                        style: TextStyle(
                          color: Color.fromARGB(169, 133, 133, 133),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "\$9.000",
                        style: TextStyle(
                          color: Color.fromARGB(255, 25, 156, 117),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ]),
                    Container(
                      // padding: EdgeInsets.all(0.0),
                      width: double.infinity,
                      child: SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              trackHeight: 15,
                              overlayShape: SliderComponentShape.noThumb),
                          child: Slider(
                            value: 0.8,
                            divisions: 100,
                            onChanged: (value) {},
                            activeColor: Color.fromARGB(255, 25, 156, 117),
                            inactiveColor: Color.fromARGB(255, 221, 221, 221),
                            thumbColor: Colors.white,
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "0\$",
                            style: TextStyle(
                                color: Color.fromARGB(169, 133, 133, 133),
                                fontSize: 14.0),
                          ),
                          Text(
                            "15.000\$",
                            style: TextStyle(
                                color: Color.fromARGB(169, 133, 133, 133),
                                fontSize: 14.0),
                          )
                        ],
                      ),
                    )
                  ],
                )),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Transactions",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700),
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
