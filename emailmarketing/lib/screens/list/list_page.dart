import 'package:emailmarketing/constant.dart';
import 'package:emailmarketing/readdata/get_chiendich.dart';
import 'package:emailmarketing/screens/home/home_page.dart';
import 'package:emailmarketing/screens/input/input_page.dart';
import 'package:emailmarketing/screens/user/user_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final user = FirebaseAuth.instance.currentUser!;

// document list 
  List<String> docIDs = [];

// get docIDs
  Future getDocId() async {
     docIDs=[];
    await FirebaseFirestore.instance.collection('chiendich').where('uid', isEqualTo: user.uid).get().then(
          (snapshot) => snapshot.docs.forEach(
            (document) {
              docIDs.add(document.reference.id);
            },
          ),
        );
  }



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: ListAppBar(context),
      body: Container(
        height: size.height * 1.0,
        decoration: const BoxDecoration(
          color: background2,
        ),
        child: Container(
            margin: const EdgeInsets.only(
              top: kDefaultPadding / 2,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24.0),
                  topRight: Radius.circular(24.0)),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // ignore: avoid_unnecessary_containers
                      Container(
                        padding: const EdgeInsets.only(
                          right: kDefaultPadding - 4,
                          top: kDefaultPadding - 2,
                        ),
                        child: SizedBox(
                          width: 140.0,
                          height: 30.0,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 0.0,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              backgroundColor: color1,
                            ),
                            child: const Text(
                              'Danh sách',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        padding: const EdgeInsets.only(
                          top: kDefaultPadding - 2,
                        ),
                        child: SizedBox(
                          width: 140.0,
                          height: 30.0,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const InputPage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 0.0,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              backgroundColor: background2,
                              minimumSize: Size.zero, // Set this
                              padding: EdgeInsets.zero,
                            ),
                            child: const Text(
                              'Thêm chiến dịch',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(
                      left: kDefaultPadding - 5,
                      top: kDefaultPadding,
                    ),
                    child: const Text(
                      'Chiến dịch',
                      style: TextStyle(
                        color: textColor1,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(
                        top: kDefaultPadding + 1,
                      ),
                      width: size.width * 1.0,
                      height: size.height * 0.75,
                      child: Column(
                        children: [
                          Expanded(
                              child:  FutureBuilder(
                            future: getDocId(),
                            builder: (context, snapshot) {
                              return ListView.builder(
                                itemCount: docIDs.length,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    title: Container(
                                      margin: const EdgeInsets.only(
                                        right: kDefaultPadding - 12,
                                        left: kDefaultPadding - 12,
                                        bottom: kDefaultPadding + 1,
                                      ),
                                      decoration: const BoxDecoration(
                                        border: Border(
                                          top: BorderSide(
                                              width: 0.5, color: colorShadow),
                                          left: BorderSide(
                                              width: 0.5, color: colorShadow),
                                          right: BorderSide(
                                              width: 0.5, color: colorShadow),
                                          bottom: BorderSide(
                                              width: 0.5, color: colorShadow),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            offset: Offset(0, 10),
                                            blurRadius: 10,
                                            spreadRadius: 2,
                                            color: colorShadow,
                                          ),
                                        ],
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8)),
                                      ),
                                      child: Column(
                                        children: [
                                          GetChienDich(
                                              documentId: docIDs[index]),

                                          Container(
                                            padding: const EdgeInsets.only(
                                              top: kDefaultPadding - 9,
                                              left: kDefaultPadding - 5,
                                              bottom: kDefaultPadding * 2 + 2,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                // ignore: avoid_unnecessary_containers
                                                Container(
                                                  alignment: Alignment.center,
                                                  width: 70,
                                                  height: 30,
                                                  margin: const EdgeInsets.only(
                                                      right:
                                                          kDefaultPadding - 8),
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: color1,
                                                  ),
                                                  child: const Text(
                                                    'Duy trì',
                                                    style: TextStyle(
                                                      color: textColor3,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  alignment: Alignment.center,
                                                  width: 70,
                                                  height: 30,
                                                  margin: const EdgeInsets.only(
                                                      right:
                                                          kDefaultPadding - 8),
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: color3,
                                                  ),
                                                  child: const Text(
                                                    'Duy trì',
                                                    style: TextStyle(
                                                      color: textColor1,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  alignment: Alignment.center,
                                                  width: 30,
                                                  height: 30,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: background2,
                                                  ),
                                                  child: const Text(
                                                    '+',
                                                    style: TextStyle(
                                                      color: textColor1,
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          // ignore: avoid_unnecessary_containers
                                          Container(
                                            padding: const EdgeInsets.only(
                                              bottom: kDefaultPadding - 11,
                                            ),
                                            child: Row(children: [
                                              Container(
                                                  alignment: Alignment.topLeft,
                                                  padding:
                                                      const EdgeInsets.only(
                                                    left: kDefaultPadding - 5,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        width: 8,
                                                        height: 8,
                                                        margin: const EdgeInsets
                                                            .only(
                                                          right: 3.0,
                                                        ),
                                                        decoration:
                                                            const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: colorNotice,
                                                        ),
                                                      ),
                                                      const Text(
                                                        "Chiến dịch được khởi chạy",
                                                        style: TextStyle(
                                                          color: textColor4,
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ],
                                                  )),
                                              Expanded(
                                                flex: 1,
                                                child: InkWell(
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              HomePage(
                                                                  documentId:
                                                                      docIDs[
                                                                          index])),
                                                    );
                                                  },
                                                  child: Container(
                                                    alignment:
                                                        Alignment.topRight,
                                                    padding: const EdgeInsets
                                                            .only(
                                                        right: kDefaultPadding -
                                                            11),
                                                    child: const Text(
                                                      'Xem ngay >>',
                                                      style: TextStyle(
                                                          color: textColor1,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ]),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          )),
                        ],
                      )),
                ],
              ),
            )),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  AppBar ListAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,

      toolbarHeight: 60.0,
      automaticallyImplyLeading: false,
      // ignore: avoid_unnecessary_containers
      title: Container(
        padding: const EdgeInsets.only(
          left: kDefaultPadding,
        ),
        child: const Text(
          "DANH SÁCH",
          textAlign: TextAlign.left,
          style: TextStyle(
              color: textColor2, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      actions: <Widget>[
        // ignore: avoid_unnecessary_containers
        Container(
          padding: const EdgeInsets.only(right: kDefaultPadding),
          child: IconButton(
            iconSize: 48,
            icon: Image.asset('assets/images/people.png'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UserPage()),
              );
            },
          ),
        )
      ],
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          color: background2,
        ),
      ),
    );
  }
}
