import 'package:app_sell_valtx/views/credit/credit_view.dart';
import 'package:app_sell_valtx/views/home/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Poppins',
          backgroundColor: Color.fromARGB(255, 235, 235, 235)),
      home: HomeView(),
    );
  }
}
