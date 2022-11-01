import 'package:app_sell_valtx/views/credit/credit_view.dart';
import 'package:app_sell_valtx/views/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBottomNavigation extends StatefulWidget {
  const AppBottomNavigation({Key? key}) : super(key: key);

  @override
  _AppBottomNavigationState createState() => _AppBottomNavigationState();
}

int selectedItemIndex = 0;

class _AppBottomNavigationState extends State<AppBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration:
          const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildNavBarItem(FontAwesomeIcons.house, 0),
          buildNavBarItem(
            FontAwesomeIcons.squarePollVertical,
            1,
          ),
          buildNavBarItem(
            FontAwesomeIcons.squarePlus,
            2,
          ),
          buildNavBarItem(
            FontAwesomeIcons.creditCard,
            3,
          ),
          buildNavBarItem(
            FontAwesomeIcons.user,
            4,
          ),
        ],
      ),
    );
  }

  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedItemIndex = index;
          if (index == 0) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomeView()));
          }
          if (index == 3) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const CreditView()));
          }
        });

        print("presionandpo $index");
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            border: index == 2
                ? Border.all(
                    width: 3, color: const Color.fromARGB(255, 196, 196, 196))
                : Border.all(color: Colors.transparent),
            borderRadius: BorderRadius.circular(100.0),
            gradient: index == 2
                ? const LinearGradient(colors: [
                    Color.fromRGBO(70, 131, 126, 1.0),
                    Color.fromRGBO(159, 99, 84, 1.0),
                  ])
                : const LinearGradient(colors: [
                    Colors.white,
                    Colors.white,
                  ])),

        child: Center(
          child: FaIcon(
            icon,

            size: 20.0,
            color: index == selectedItemIndex
                ? const Color.fromARGB(255, 9, 163, 168)
                : const Color.fromARGB(255, 218, 218, 218),
            // color: index == 3 ? Colors.white : Colors.grey,
          ),
        ),

        // child: HeroIcon(HeroIcons.home),
        //  const AppBottomNavigation(),
      ),
    );
  }
}
