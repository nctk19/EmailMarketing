import 'package:emailmarketing/constant.dart';
import 'package:emailmarketing/readdata/post_user.dart';
import 'package:emailmarketing/screens/login/main_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class ChuyentaikhoanSnackBar extends StatefulWidget {
  //const ChuyentaikhoanSnackBar({Key? key}) : super(key: key);
  const ChuyentaikhoanSnackBar({super.key});

  @override
  State<ChuyentaikhoanSnackBar> createState() => _ChuyentaikhoanSnackBar();
}

class _ChuyentaikhoanSnackBar extends State<ChuyentaikhoanSnackBar> {
  List _users = [];

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/user.json');
    final data = await readUser();
    setState(() {
      _users = data;
    });
    showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24), topRight: Radius.circular(24)),
            ),
            isScrollControlled: true,
            backgroundColor: textColor3,
            context: context,
            builder: (context) {
              return StatefulBuilder(// this is new
                  builder: (BuildContext context, StateSetter setState) {
                // ignore: sized_box_for_whitespace
                return Container(
                    height: 499,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.only(
                            left: kDefaultPadding + 1,
                            top: kDefaultPadding + 15,
                          ),
                          child: const Text(
                            'Chuyển tài khoản',
                            style: TextStyle(
                                color: textColor1,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.only(
                            left: kDefaultPadding + 1,
                            right: kDefaultPadding + 1,
                            top: kDefaultPadding - 12,
                            bottom: kDefaultPadding * 2,
                          ),
                          child: const Text(
                            'Bạn có thể sử dụng 1 hoặc nhiều tài khoản để thiết lập với chúng tôi',
                            style: TextStyle(
                              color: colorLine,
                              fontSize: 14,
                              //fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        // Display the data loaded from sample.json
                        _users.isNotEmpty
                            ? Expanded(
                                child: ListView.builder(
                                  itemCount: _users.length,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      //leading: Text(_users[index]["email"]),
                                      // ignore: avoid_unnecessary_containers
                                      title: Container(
                                        margin: const EdgeInsets.only(
                                          bottom: kDefaultPadding,
                                        ),
                                        padding: const EdgeInsets.only(
                                          right: kDefaultPadding
                                        ),
                                        decoration: const BoxDecoration(
                                          border: Border(
                                            top: BorderSide(
                                                width: 0.5,
                                                color: colorShadow),
                                            bottom: BorderSide(
                                                width: 0.5,
                                                color: colorShadow),
                                            left: BorderSide(
                                                width: 0.5,
                                                color: colorShadow),
                                            right: BorderSide(
                                                width: 0.5,
                                                color: colorShadow),
                                          ),
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(4),
                                            bottomRight: Radius.circular(4),
                                            topLeft: Radius.circular(4),
                                            bottomLeft: Radius.circular(4),
                                          ),
                                        ),
                                        child: SizedBox(
                                          
                                          width: 370.0,
                                          height: 50.0,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              singIn(_users[index]["email"],
                                                  _users[index]["password"]);
                                              
                                            },
                                            style: ElevatedButton.styleFrom(
                                              padding: const EdgeInsets.only(
                                                left: kDefaultPadding + 3,
                                              ),
                                              elevation: 0.0,
                                              shadowColor: Colors.transparent,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4)),
                                              backgroundColor: textColor3,
                                            ),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: SingleChildScrollView(
                                                scrollDirection: Axis.horizontal,
                                                child: Text(
                                                  _users[index]["email"],
                                                  style: const TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              )
                            : Center(
                                child: Container(
                                    padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height *
                                          0.4,
                                    ),
                                    child: const CircularProgressIndicator())),
                        Container(
                          padding: const EdgeInsets.only(
                            left: kDefaultPadding + 1,
                            right: kDefaultPadding + 1,
                          ),
                          child: Container(
                            margin: const EdgeInsets.only(
                              top: kDefaultPadding + 4,
                              bottom: kDefaultPadding,
                            ),
                            decoration: const BoxDecoration(
                              border: Border(
                                top: BorderSide(width: 0.5, color: colorShadow),
                                bottom:
                                    BorderSide(width: 0.5, color: colorShadow),
                                left:
                                    BorderSide(width: 0.5, color: colorShadow),
                                right:
                                    BorderSide(width: 0.5, color: colorShadow),
                              ),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(4),
                                bottomRight: Radius.circular(4),
                                topLeft: Radius.circular(4),
                                bottomLeft: Radius.circular(4),
                              ),
                            ),
                            child: SizedBox(
                              width: 370.0,
                              height: 50.0,
                              child: ElevatedButton(
                                onPressed: () {
                                  Relogin();
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.only(
                                    left: kDefaultPadding + 3,
                                  ),
                                  elevation: 0.0,
                                  shadowColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4)),
                                  backgroundColor: color2,
                                ),
                                child: const Text(
                                  'Thêm tài khoản',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ));
              });
            });
      
  }

  Future singIn(String email, String password) async {
    try {
      // ignore: unused_local_variable
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      // ignore: use_build_context_synchronously
      await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const MainPage()),
                                                );

// } on FirebaseAuthException catch (e) {
//   if (e.code == 'user-not-found') {
//     // ignore: avoid_print
//     print('No user found for that email.');
//   } else if (e.code == 'wrong-password') {
//     // ignore: avoid_print
//     print('Wrong password provided for that user.');
//   }
    } catch (e) {
      print("Loi ne nha: " + e.toString());
    }
  }
Future Relogin() async {
    try {
      // ignore: unused_local_variable
      await   FirebaseAuth.instance.signOut();
      // ignore: use_build_context_synchronously
      await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const MainPage()),
                                                );


    } catch (e) {
      print("Loi ne nha: " + e.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        readJson();
        },
      child: const Text(
        'Chuyển tài khoản',
        style: TextStyle(
          color: color2,
          fontSize: 18,
        ),
      ),
    );
  }
}
