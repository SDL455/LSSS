import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final Size size;

  const HeaderWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: size.height * 0.4,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              // colors: [Colors.lightBlueAccent, Colors.blueAccent],
              colors: [
                Color(0xff1b4c58),
                Color(0xff1b4c58),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
        ),
        Column(
          children: [
            Image.asset(
              'assets/oldicon.png', // Replace with your asset path
              height: 140,
            ),
            const SizedBox(height: 10),
            const Text(
              "ກະຊວງປ້ອງກັນຄວາມສະຫງົບ",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                // fontFamily: 'NotoSans',
                fontFamily: 'PhetsarathOT',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
