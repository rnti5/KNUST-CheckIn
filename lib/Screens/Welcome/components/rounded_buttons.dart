import 'package:flutter/material.dart';
import 'package:checkin/constant.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {required this.text,
      required this.press,
      this.color = kPrimaryColor,
      this.textColor = kPrimaryLightColor,
      super.key});

  final String text;
  final void Function() press;
  final Color color, textColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; //This size provide us with the total height and width of our screen
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: size.width * 0.8,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(29),
          child: OutlinedButton(
            onPressed: press,
            style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                backgroundColor: color,
                foregroundColor: textColor),
            child: Text(
              text,
              style: TextStyle(color: textColor, fontSize: 20),
            ),
          )),
    );
  }
}
