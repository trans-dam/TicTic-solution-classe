import 'package:flutter/material.dart';
import 'package:tictic/routes.dart';
import 'package:tictic/screens/welcome/welcome.dart';
import './constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'TicTic',
        routes: routes,
        theme: kAppTheme);
  }
}
