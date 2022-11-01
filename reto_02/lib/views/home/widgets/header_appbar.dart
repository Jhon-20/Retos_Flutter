import 'package:flutter/material.dart';

class HeaderAppbar extends StatelessWidget {
  const HeaderAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        square(Icons.menu),
        RichText(
          text: const TextSpan(
            text: 'Welcome back,',
            style: TextStyle(
              fontSize: 16.0,
              fontFamily: 'Poppins',
              color: Color.fromARGB(255, 206, 206, 206),
            ),
            children: [
              TextSpan(
                text: ' Arip!',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
              ),
            ],
          ),
        ),
        square(Icons.notification_add_rounded),
      ],
    );
  }

  Widget square(IconData icon) {
    return Container(
      width: 35.0,
      height: 35.0,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Icon(icon, color: Colors.white),
    );
  }
}
