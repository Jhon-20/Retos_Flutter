import 'package:app_reto_03/app/ui/views/menu/widget/content.dart';
import 'package:flutter/material.dart';

class MenuView extends StatelessWidget {
  const MenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: Colors.transparent, body: Content());
  }
}
