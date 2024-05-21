import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; //This size provide us with the total height and width of our screen
    return Container(
      height: size.height,
      width: double.infinity,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          'assets/images/clock.png',
          color: const Color.fromARGB(55, 128, 0, 0),
        ),
      ]),
    );
  }
}
