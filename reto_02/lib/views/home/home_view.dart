import 'package:app_sell_valtx/views/home/widgets/app_bottom_navigation.dart';
import 'package:app_sell_valtx/views/home/widgets/content.dart';
import 'package:app_sell_valtx/views/home/widgets/header.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 248, 248, 248),
              Color.fromARGB(255, 248, 248, 248),
            ]),
          ),
          child: Column(
            children: const [
              Header(),
              Content(),
            ],
          ),
        ),
        bottomNavigationBar: AppBottomNavigation());
  }
}
