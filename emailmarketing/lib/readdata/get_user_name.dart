

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emailmarketing/constant.dart';
import 'package:flutter/material.dart';

class GetUserName extends StatelessWidget {
  final String documentId;
  
   GetUserName({required this.documentId});

  

  @override
  Widget build(BuildContext context) {
    CollectionReference user = FirebaseFirestore.instance.collection('user');
    return FutureBuilder<DocumentSnapshot>(
      future: user.doc(documentId).get(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done){
          Map<String, dynamic> data =
          snapshot.data!.data() as Map<String, dynamic>;
          return  Text(
                        '${data['name']}',
                        style: const TextStyle(
                            color: textColor1,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      
          );
                  
                  }
        return Text('Loading...');
      }),
      );
  }
}