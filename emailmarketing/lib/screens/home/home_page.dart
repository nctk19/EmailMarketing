import 'package:emailmarketing/constant.dart';
import 'package:emailmarketing/readdata/get_chiendich_detail.dart';
import 'package:emailmarketing/screens/input/input_page.dart';
import 'package:emailmarketing/screens/list/list_page.dart';
import 'package:emailmarketing/screens/user/user_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:toast/toast.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class HomePage extends StatefulWidget {
  final String documentId;
  HomePage({required this.documentId});
  
  @override
  // ignore: no_logic_in_create_state
  State<HomePage> createState() => _HomePageState(docId: documentId);
}

class _HomePageState extends State<HomePage> {
  
  

final String docId;
  _HomePageState({required this.docId});

  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: HomeAppBar(context),
      body: Container(
        height: size.height * 1.0,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              color1,
              color2,
            ],
          ),
        ),
        child: Container(
          margin: const EdgeInsets.only(
            top: kDefaultPadding / 2,
          ),
          decoration: const BoxDecoration(
            color: background2,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24.0),
                topRight: Radius.circular(24.0)),
          ),
          child: SingleChildScrollView(
            child: GetChiendichDetail(documentId: docId),
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        height: 64.0,
        width: 64.0,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: color1,
              onPressed: () {
                Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const InputPage()),
                              );
              },
              //tooltip: "Email",
              child: Image.asset(
                'assets/images/email.jpg',
                width: 24,
                height: 24,
              )),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  AppBar HomeAppBar(BuildContext context) {
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
          "TRANG CHỦ" ,
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      actions: <Widget>[
    // ignore: avoid_unnecessary_containers
    Container(
      padding: const EdgeInsets.only(
        right: kDefaultPadding
      ),
      child: IconButton(
        iconSize: 48,
        icon: Image.asset('assets/images/people.png'),
        onPressed: () {
          // do something
          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const UserPage()),
                            );
        },
      ),
    )
  ],
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              color1,
              color2,
            ],
          ),
        ),
      ),
    );
  }
}

Map<String, double> dataMap = {
  
  
  "Spam": 740,
  "Khác": 240,
  "Đã mở": 750,
  "Đã xem": 780,
};

List<Color> colorList = [
  
  color3,
  background2,
  color1,
  color2,
];
