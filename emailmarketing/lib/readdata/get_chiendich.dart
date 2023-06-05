

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emailmarketing/constant.dart';
import 'package:flutter/material.dart';

class GetChienDich extends StatelessWidget {
  final String documentId;
  
   GetChienDich({required this.documentId});

  

  @override
  Widget build(BuildContext context) {
    CollectionReference chiendich = FirebaseFirestore.instance.collection('chiendich');
    return FutureBuilder<DocumentSnapshot>(
      future: chiendich.doc(documentId).get(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done){
          Map<String, dynamic> data =
          snapshot.data!.data() as Map<String, dynamic>;
          return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.only(
                                    left: kDefaultPadding - 5,
                                    top: kDefaultPadding - 13),
                                child:  Text('${data['name']}',style: const TextStyle(
                                      color: textColor1,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),)
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.topRight,
                                padding: const EdgeInsets.only(
                                    right: kDefaultPadding - 5,
                                    top: kDefaultPadding - 10),
                                child: Text(
                                  'Ngày bắt đầu:\n'+'${data['ngaybatdau']}',
                                  style: const TextStyle(
                                      color: colorNotice,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        );
        }
        return Text('Loading...');
      }),
      );
  }
}