

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emailmarketing/constant.dart';
import 'package:flutter/material.dart';

class GetUserDetail extends StatelessWidget {
  final String documentId;
  
   GetUserDetail({required this.documentId});

  

  @override
  Widget build(BuildContext context) {
    CollectionReference user = FirebaseFirestore.instance.collection('user');
    return FutureBuilder<DocumentSnapshot>(
      future: user.doc(documentId).get(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done){
          Map<String, dynamic> data =
          snapshot.data!.data() as Map<String, dynamic>;
          return  Container(
                  padding: const EdgeInsets.only(
                    left: kDefaultPadding - 2,
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                            right: kDefaultPadding,
                            left: kDefaultPadding,
                          ),
                          height: 40,
                          margin: const EdgeInsets.only(
                            right: kDefaultPadding / 2,
                          ),
                          decoration: const BoxDecoration(
                            color: textColor1,
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              '${data['ngaysinh']}',
                              style: const TextStyle(
                                color: textColor3,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            right: kDefaultPadding,
                            left: kDefaultPadding,
                          ),
                          height: 40,
                          margin: const EdgeInsets.only(
                            right: kDefaultPadding / 2,
                          ),
                          decoration: const BoxDecoration(
                            color: color2,
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            child:  Text(
                              '${data['diachi']}',
                              style: const TextStyle(
                                color: textColor3,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            right: kDefaultPadding,
                            left: kDefaultPadding,
                          ),
                          height: 40,
                          margin: const EdgeInsets.only(
                            right: kDefaultPadding / 2,
                          ),
                          decoration: const BoxDecoration(
                            color: color1,
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            child:  Text(
                              '${data['sdt']}',
                              style: const TextStyle(
                                color: textColor3,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            right: kDefaultPadding,
                            left: kDefaultPadding,
                          ),
                          height: 40,
                          margin: const EdgeInsets.only(
                            right: kDefaultPadding - 2,
                          ),
                          decoration: const BoxDecoration(
                            color: color3,
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            child:  Text(
                              '${data['email']}',
                              style: const TextStyle(
                                color: textColor1,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
                  
                  }
        return Text('Loading...');
      }),
      );
  }
}