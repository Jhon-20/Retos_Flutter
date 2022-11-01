import 'package:app_reto_03/app/ui/views/home/home_view.dart';
import 'package:app_reto_03/app/ui/views/menu/menu_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_routes.dart';
import 'app/routes/app_views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      color: Colors.red,
      theme: ThemeData(
        backgroundColor: Colors.blue,
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoutes.HOME,
      getPages: AppViews.views,
    );
  }
}
