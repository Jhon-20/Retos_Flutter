import 'package:app_reto_03/app/ui/views/home/widget/header_appbar_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        width: double.infinity,
        height: 350.0,
        padding: const EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right: 20.0,
          bottom: 30.0,
        ),
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage("lib/app/assets/images/banner.png"),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(35.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const HeaderAppbarHome(),
            Column(children: [
              const Text(
                "Lookun' for somerging spaecial?",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10.0),
              Material(
                elevation: 10.0,
                borderRadius: BorderRadius.circular(50.0),
                shadowColor: Colors.grey,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Container(
                      padding: const EdgeInsets.all(20.0),
                      child: SvgPicture.asset(
                        "lib/app/assets/icons/search.svg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    hintText: "Find whatever you need",
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50.0)),
                  ),
                ),
              ),
            ]),
          ],
        ));
  }
}
