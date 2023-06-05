import 'package:emailmarketing/constant.dart';
import 'package:emailmarketing/readdata/post_user.dart';
import 'package:emailmarketing/screens/login/main_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LogoutSnackBar extends StatelessWidget {
  final useremail = FirebaseAuth.instance.currentUser?.email;
  LogoutSnackBar({super.key});
   

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(useremail);
        showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24), topRight: Radius.circular(24)),
            ),
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return StatefulBuilder(// this is new
                  builder: (BuildContext context, StateSetter setState) {
                // ignore: sized_box_for_whitespace
                return Container(
                    height: 216,
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
                            left: kDefaultPadding + 11,
                            right: kDefaultPadding + 11,
                          ),
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: [
                              // ignore: avoid_unnecessary_containers
                              Container(
                                margin: const EdgeInsets.only(
                                  top: kDefaultPadding + 10,
                                ),
                                decoration: const BoxDecoration(
                                  border: Border(
                                    top: BorderSide(
                                        width: 0.5, color: colorShadow),
                                    bottom: BorderSide(
                                        width: 0.5, color: colorShadow),
                                    left: BorderSide(
                                        width: 0.5, color: colorShadow),
                                    right: BorderSide(
                                        width: 0.5, color: colorShadow),
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
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      backgroundColor: textColor3,
                                    ),
                                    child: const Text(
                                      'Hủy bỏ',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              // ignore: avoid_unnecessary_containers
                              Container(
                                margin: const EdgeInsets.only(
                                  top: kDefaultPadding + 10,
                                ),
                                child: SizedBox(
                                  width: 155.0,
                                  height: 50.0,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      FirebaseAuth.instance.signOut();
                                      deleteUser(useremail.toString());
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const MainPage()),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0.0,
                                      shadowColor: Colors.transparent,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      backgroundColor: color2,
                                    ),
                                    child: const Text(
                                      'Tiếp tục',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ));
              });
            });
      },
      child: const Text(
        'Đăng xuất',
        style: TextStyle(
          color: colorNotice,
          fontSize: 18,
        ),
      ),
    );
  }
}
