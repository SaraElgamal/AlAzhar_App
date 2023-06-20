import 'package:flutter/material.dart';
import 'package:project_data/Sign_up.dart';
import 'package:project_data/login.dart';
import 'package:project_data/logo.dart';
import 'package:project_data/profile.dart';
import 'package:project_data/screen_table.dart';
import 'package:project_data/subjects.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Cairo',
      ),
    );
  }

}
