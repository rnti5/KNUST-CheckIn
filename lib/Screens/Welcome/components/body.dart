import 'package:checkin/Screens/Welcome/components/rounded_buttons.dart';
import 'package:checkin/constant.dart';
import 'package:flutter/material.dart';
import 'package:checkin/Screens/Login/student_login_screen.dart';
import 'package:checkin/Screens/Login/lecturer_login_screen.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text(
          'KNUST Check-In',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        foregroundColor: kPrimaryLightColor,
      ),
      body: SizedBox(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundedButton(
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StudentLoginScreen()));
                  },
                  text: 'Student',
                  color: kPrimaryColor,
                  textColor: kPrimaryLightColor),
              RoundedButton(
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LecturerLoginScreen()));
                  },
                  text: 'Lecturer',
                  color: Colors.white,
                  textColor: kPrimaryColor),
            ],
          ),
        ),
      ),
    );
  }
}
