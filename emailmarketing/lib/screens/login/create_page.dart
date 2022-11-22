

import 'package:emailmarketing/screens/login/res_page.dart';
import 'package:emailmarketing/screens/login/success_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class CreatePage extends StatelessWidget{
  const CreatePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData){
          return const SuccessPage();
        }
        else{
          return const ResPage();
        }
      },
      ),
    );
  }
}