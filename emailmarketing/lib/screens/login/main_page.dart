
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emailmarketing/screens/home/home_page.dart';
import 'package:emailmarketing/screens/list/list_null_page.dart';
import 'package:emailmarketing/screens/list/list_status.dart';
import 'package:emailmarketing/screens/login/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {



    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData){
          return  const ListStatusPage();}
        else{
          return const LoginPage();
        }
      },
      ),
    );
  }
}
  

