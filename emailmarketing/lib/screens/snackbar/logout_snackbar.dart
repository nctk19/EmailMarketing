import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emailmarketing/constant.dart';
import 'package:emailmarketing/screens/login/login_page.dart';
import 'package:emailmarketing/screens/login/main_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LogoutSnackBar extends StatelessWidget {
  const LogoutSnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
    alignment: Alignment.centerLeft, // <-- had to set alignment
    padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
  ),
      onPressed: () {

        
        Scaffold.of(context).showBottomSheet(
    (context) => Stack(
        alignment: Alignment.bottomCenter,
        children: [
          GestureDetector(
            
            child: Container(
                height: double.infinity,
                width: double.infinity,
                color: colorLine
                ),
          ),
          Container(
            height: 216,
            width: double.infinity,
            
            decoration: const BoxDecoration(
                color: textColor3,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24))),
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: Column(
                children: [
                  Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(
                    left: kDefaultPadding + 8,
                    top: kDefaultPadding + 8,
                  ),
                  child: const Text(
                    'Đăng xuất',
                    style: TextStyle(
                        color: textColor1,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(
                    left: kDefaultPadding + 11,
                    top: kDefaultPadding + 10,
                  ),
                  child: const Text(
                    'Bạn thật sự muốn đăng xuất',
                    style: TextStyle(
                        color: textColor1,
                        fontSize: 16,
                        //fontWeight: FontWeight.bold
                      ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: kDefaultPadding+11,
                    right: kDefaultPadding+11,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // ignore: avoid_unnecessary_containers
                      Container(
                        margin: const EdgeInsets.only(
                          top: kDefaultPadding +10,
                        ),
                        
                         decoration: const BoxDecoration(
                          
                          border: Border(
                            top: BorderSide(width: 0.5, color: colorShadow),
                            bottom: BorderSide(width: 0.5, color: colorShadow),
                            left: BorderSide(width: 0.5, color: colorShadow),
                            right: BorderSide(width: 0.5, color: colorShadow),
                          ),
                          borderRadius: BorderRadius.only(
                          topRight: Radius.circular(4),
                          bottomRight: Radius.circular(4),
                          topLeft: Radius.circular(4),
                          bottomLeft: Radius.circular(4),
                          ),
                        ),
                        child: SizedBox(
                          width: 155.0,
                          height: 50.0,
                          child: ElevatedButton(
                            onPressed: () {
                              
               Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 0.0,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              backgroundColor: textColor3,
                            ),
                            child: const Text(
                              'Hủy bỏ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        margin: const EdgeInsets.only(
                          top: kDefaultPadding +10,
                        ),
                        child: SizedBox(
                          width: 155.0,
                          height: 50.0,
                          child: ElevatedButton(
                            onPressed: () {
                              
                              FirebaseAuth.instance.signOut();
                              Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  const MainPage()),
                          );
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 0.0,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              backgroundColor: color2,
                            ),
                            child: const Text(
                              'Tiếp tục',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ],
              ),
            ),
          ),
        ],
      ),
    backgroundColor: Colors.transparent);
      },
      child: const Text(
                          'Đăng xuất',
                          style: TextStyle(
                              color: colorNotice,
                              fontSize: 18,),
                        ),
    );
  }
}
