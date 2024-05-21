// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:checkin/constant.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({super.key});
  @override
  State<CoursesScreen> createState() {
    return _CoursesScreen();
  }
}

class _CoursesScreen extends State<CoursesScreen> {
  List<String> classes = ['CMS 151', 'CSM 153'];

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
      body: ClickableListView(classes: classes),
    );
  }
}

class ClickableListView extends StatelessWidget {
  const ClickableListView({
    super.key,
    required this.classes,
  });

  final List<String> classes;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: classes.length,
        itemBuilder: (context, index) => ListTile(title: Text(classes[index])));
  }
}
