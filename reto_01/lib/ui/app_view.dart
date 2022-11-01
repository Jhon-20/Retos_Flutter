import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:heroicons/heroicons.dart';

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(254, 254, 254, 1),
          elevation: 0.0,
          title: Container(
            color: Colors.white,
            margin: const EdgeInsets.only(left: 15.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Hello,",
                    style: TextStyle(
                        color: Color.fromRGBO(107, 95, 239, 1),
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w800),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "Mr. Floyd Miles.",
                    style: TextStyle(
                        color: Color.fromRGBO(107, 95, 239, 1),
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w800),
                    textAlign: TextAlign.left,
                  ),
                ]),
          ),
          titleSpacing: 2.0,
          actions: const [
            // SvgPicture.asset("icons/search.svg"),

            // Image(
            //   image: AssetImage("icons/search.png"),
            //   fit: BoxFit.fitWidth,
            //   width: 24.0,
            //   height: 24.0,
            // ),
            HeroIcon(
              HeroIcons.magnifyingGlass,
              size: 24.0,
              color: Color.fromRGBO(107, 95, 239, 1),
            ),
            SizedBox(
              width: 15.0,
            )
          ],
        ),
        body: ListView(children: [
          Container(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 15.0, bottom: 15.0),
            width: double.infinity,
            color: Color.fromRGBO(254, 254, 254, 1),
            child: Column(
              children: [
                Row(
                  children: const [
                    Text(
                      "Monthly statistics",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w800),
                      selectionColor: Colors.black,
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15.0, bottom: 20.0),
                  padding: const EdgeInsets.all(15.0),
                  width: double.infinity,
                  height: 150.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: const Color.fromRGBO(107, 95, 239, 1),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(190, 157, 154, 252),
                            offset: Offset.zero,
                            blurRadius: 8.0,
                            blurStyle: BlurStyle.solid)
                      ]),
                  child: Column(children: [
                    Row(
                      children: const [
                        Text(
                          "28,237",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: const [
                        Text(
                          "Successful treatments",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w200),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    const Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "4.7% than previus month",
                          style: TextStyle(
                              color: Colors.white60,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w200),
                        ))
                  ]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Specialties",
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Color.fromARGB(255, 194, 194, 194)),
                    ),
                  ],
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 25.0),
                        width: 110.0,
                        height: 110.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromARGB(179, 214, 214, 214),
                                  offset: Offset.zero,
                                  blurRadius: 8.0,
                                  blurStyle: BlurStyle.solid)
                            ]),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/icons/capsule.svg"),
                              const SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                "Traumatology",
                                style: TextStyle(fontSize: 13.0),
                              )
                            ]),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 25.0),
                        width: 110.0,
                        height: 110.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromARGB(179, 214, 214, 214),
                                  offset: Offset.zero,
                                  blurRadius: 8.0,
                                  blurStyle: BlurStyle.solid)
                            ]),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/icons/virus.svg"),
                              const SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                "Epidemiology",
                                style: TextStyle(fontSize: 13.0),
                              )
                            ]),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 25.0),
                        width: 110.0,
                        height: 110.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromARGB(179, 214, 214, 214),
                                  offset: Offset.zero,
                                  blurRadius: 8.0,
                                  blurStyle: BlurStyle.solid)
                            ]),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/icons/heart.svg"),
                              const SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                "Cardiology",
                                style: TextStyle(fontSize: 13.0),
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: const [
                    Text(
                      "Top Doctors",
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                      selectionColor: Colors.black,
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25.0),
                  padding: const EdgeInsets.all(20.0),
                  width: double.infinity,
                  height: 115.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(234, 241, 241, 241),
                            offset: Offset.zero,
                            blurRadius: 8.0,
                            blurStyle: BlurStyle.solid)
                      ]),
                  child: Row(
                    children: [
                      // const CircleAvatar(
                      //   radius: 42.0,
                      //   backgroundImage: AssetImage("images/person1.jpg"),
                      // ),
                      Container(
                        width: 75.0,
                        height: 150.0,
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
                        width: 25.0,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Dr. Jhon Soplopuco",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            const Text(
                              "Therapist",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 209, 209, 209),
                                  fontSize: 14.0),
                            ),
                            const SizedBox(height: 8.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset("assets/icons/favorite.svg"),
                                SizedBox(width: 5.0),
                                Text(
                                  "4.96",
                                  style: TextStyle(
                                      color: Color.fromRGBO(107, 95, 239, 1),
                                      fontSize: 14.0),
                                )
                              ],
                            ),
                          ]),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25.0),
                  padding: const EdgeInsets.all(20.0),
                  width: double.infinity,
                  height: 115.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(234, 241, 241, 241),
                            offset: Offset.zero,
                            blurRadius: 8.0,
                            blurStyle: BlurStyle.solid)
                      ]),
                  child: Row(
                    children: [
                      Container(
                        width: 75.0,
                        height: 150.0,
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
                        width: 25.0,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Dr. Ejemplo doctora",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            const Text(
                              "Therapist",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 209, 209, 209),
                                  fontSize: 14.0),
                            ),
                            const SizedBox(height: 8.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset("assets/icons/favorite.svg"),
                                SizedBox(width: 5.0),
                                Text(
                                  "4.96",
                                  style: TextStyle(
                                      color: Color.fromRGBO(107, 95, 239, 1),
                                      fontSize: 14.0),
                                )
                              ],
                            ),
                          ]),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25.0),
                  padding: const EdgeInsets.all(20.0),
                  width: double.infinity,
                  height: 115.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(234, 241, 241, 241),
                            offset: Offset.zero,
                            blurRadius: 8.0,
                            blurStyle: BlurStyle.solid)
                      ]),
                  child: Row(
                    children: [
                      Container(
                        width: 75.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/images/person3.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 25.0,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Dr. Ejemplo doctora",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            const Text(
                              "Therapist",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 209, 209, 209),
                                  fontSize: 14.0),
                            ),
                            const SizedBox(height: 8.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset("assets/icons/favorite.svg"),
                                SizedBox(width: 5.0),
                                Text(
                                  "4.96",
                                  style: TextStyle(
                                      color: Color.fromRGBO(107, 95, 239, 1),
                                      fontSize: 14.0),
                                )
                              ],
                            ),
                          ]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.red,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0.0,
          iconSize: 24.0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: HeroIcon(
                  HeroIcons.squares2x2,
                  color: Color.fromRGBO(107, 95, 239, 1),
                  style: HeroIconStyle.solid,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: HeroIcon(
                  HeroIcons.mapPin,
                  color: Color.fromARGB(76, 107, 95, 239),
                  style: HeroIconStyle.solid,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.solidCalendar,
                  color: Color.fromARGB(76, 107, 95, 239),
                  size: 24.0,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.ellipsis,
                  color: Color.fromARGB(76, 107, 95, 239),
                ),
                label: ''),
          ],
          currentIndex: 0,
          selectedItemColor: Color.fromRGBO(107, 95, 239, 1),
          onTap: null,
        ));
  }
}
