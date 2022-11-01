import 'package:app_reto_03/app/ui/views/home/widget/content.dart';
import 'package:app_reto_03/app/ui/views/home/widget/header.dart';
import 'package:flutter/material.dart';

import '../../components/bottom_navigation.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Header(),
          Content(),
        ],
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
