import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emailmarketing/screens/home/home_page.dart';
import 'package:emailmarketing/screens/list/list_null_page.dart';
import 'package:emailmarketing/screens/list/list_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListStatusPage extends StatefulWidget {
  const ListStatusPage({super.key});

  @override
  State<ListStatusPage> createState() => _ListStatusPageState();
}

class _ListStatusPageState extends State<ListStatusPage> {

  final user = FirebaseAuth.instance.currentUser!;

// document list
  List<String> docIDs = [];

// get docIDs
  Future getDocId() async {
    docIDs = [];
    await FirebaseFirestore.instance.collection('chiendich').where('uid', isEqualTo: user.uid).get().then(
          (snapshot) => snapshot.docs.forEach(
            (document) {
              print(document.reference.id);
              docIDs.add(document.reference.id);
            },
          ),
        );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getDocId(),
      builder: (context, snapshot) {
        if (docIDs.isEmpty){
          return FutureBuilder(
    future: FirebaseFirestore.instance
        .collection('chiendich').where('uid', isEqualTo: FirebaseAuth.instance.currentUser?.uid).get(),
    builder: (context, AsyncSnapshot snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return Center(child: Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height*0.1,
            ),
            child: const CircularProgressIndicator()));
      }else{        
          return const ListNullPage();
        }
        }); 
        }
        else{
          
          print("co null khong nha: "+docIDs.length.toString());
          return  FutureBuilder(
    future: FirebaseFirestore.instance
        .collection('chiendich').where('uid', isEqualTo: FirebaseAuth.instance.currentUser?.uid).get(),
    builder: (context, AsyncSnapshot snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return Center(child: Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height*0.1,
            ),
            child: const CircularProgressIndicator()));
      }else{        
          return HomePage(documentId: snapshot.data.docs[0].reference.id.toString());
        }
        }); 
        }
      },
      ),
    );
  }
}