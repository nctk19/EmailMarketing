import 'package:emailmarketing/constant.dart';
import 'package:emailmarketing/screens/login/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Email Marketing',
      theme: ThemeData(
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: color2,
    ),
    appBarTheme: const AppBarTheme(
          backgroundColor: background2,
        ),
  ),
      home: const LoginPage(),
    );
  }
}