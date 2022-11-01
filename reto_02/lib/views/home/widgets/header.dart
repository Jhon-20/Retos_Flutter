import 'package:app_sell_valtx/views/home/widgets/header_appbar.dart';
import 'package:app_sell_valtx/views/home/widgets/operations.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      width: double.infinity,
      height: 350.0,
      padding: const EdgeInsets.only(
        top: 50.0,
        left: 20.0,
        right: 20.0,
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/banner_header.png"),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(35.0),
          bottomRight: Radius.circular(35.0),
          topLeft: Radius.circular(35.0),
          topRight: Radius.circular(35.0),
        ),
        // gradient: LinearGradient(
        //   colors: [
        //     Color.fromRGBO(70, 131, 126, 1.0),
        //     Color.fromRGBO(159, 99, 84, 1.0),
        //   ],
        // ),
      ),
      child: Column(
        children: const [
          HeaderAppbar(),
          SizedBox(height: 20.0),
          Text(
            "Your Balance",
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10.0),
          Text(
            "\$7.664,63",
            style: TextStyle(
                fontSize: 36.0,
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins'),
          ),
          SizedBox(height: 20.0),
          Operations(),
        ],
      ),
    );
  }
}
