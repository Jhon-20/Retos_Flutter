import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavigationState createState() => _BottomNavigationState();
}

int selectedItemIndex = 0;

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration:
          const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildNavBarItem(
            "lib/app/assets/icons/home.svg",
            0,
          ),
          buildNavBarItem(
            "lib/app/assets/icons/paper.svg",
            1,
          ),
          buildNavBarItem(
            "lib/app/assets/icons/delete.svg",
            2,
          ),
          buildNavBarItem(
            "lib/app/assets/icons/user.svg",
            3,
          ),
        ],
      ),
    );
  }

  Widget buildNavBarItem(
    String icon,
    int index,
  ) {
    return GestureDetector(
        child: Container(
      width: MediaQuery.of(context).size.width / 5,
      height: 50,
      decoration: const BoxDecoration(color: Colors.white),
      child: Center(
        child: SvgPicture.asset(
          icon,
        ),
      ),
    ));
  }
}
