import 'package:emailmarketing/constant.dart';
import 'package:emailmarketing/screens/login/main_page.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        fontFamily: 'Raleway',
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: color2,
    ),
    appBarTheme: const AppBarTheme(
          backgroundColor: background2,
        ),
  ),
      home: const MainPage(),
    );
  }
}