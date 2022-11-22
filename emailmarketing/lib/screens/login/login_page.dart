

import 'package:emailmarketing/constant.dart';
import 'package:emailmarketing/screens/home/home_page.dart';
import 'package:emailmarketing/screens/login/create_page.dart';
import 'package:emailmarketing/screens/login/res_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future singIn() async {
    // ignore: avoid_print
    print(_emailController.text.toString().trim());
    // ignore: avoid_print
    print(_passwordController.text.trim());
    try {
  // ignore: unused_local_variable
  UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: _emailController.text.toString().trim(), 
      password: _passwordController.text.trim(),
  );
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    // ignore: avoid_print
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    // ignore: avoid_print
    print('Wrong password provided for that user.');
  }
}
    // await FirebaseAuth.instance.signInWithEmailAndPassword(
    //   email: _emailController.text.toString().trim(), 
    //   password: _passwordController.text.trim(),
    //   );
  }
 
@override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LoginAppBar(),
      body: Container(
        height: MediaQuery.of(context).size.height * 1.0,
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
            top: 13 + kDefaultPadding,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24.0),
                topRight: Radius.circular(24.0)),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -4),
                blurRadius: 4,
                //spreadRadius: 4,
                color: colorShadow,
              ),
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // ignore: avoid_unnecessary_containers
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(
                      left: 9 + kDefaultPadding,
                      bottom: 6 * kDefaultPadding - 2,
                      top: 13 + kDefaultPadding),
                  child: const Text(
                    'Đăng Nhập',
                    style: TextStyle(
                        color: textColor1,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(
                    left: 9 + kDefaultPadding,
                    bottom: kDefaultPadding - 5,
                  ),
                  child: const Text(
                    'Tên đăng nhập',
                    style: TextStyle(
                      color: textColor1,
                      fontSize: 18,
                    ),
                  ),
                ),
          
                Padding(
                  padding: const EdgeInsets.only(
                    left: 9 + kDefaultPadding,
                    right: 9 + kDefaultPadding,
                  ),
                  child: TextFormField(
                    controller: _emailController,
                    style: const TextStyle(fontSize: 14),
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Nhập tên đăng nhập của bạn',
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(
                    top: kDefaultPadding - 9,
                    left: 9 + kDefaultPadding,
                    bottom: kDefaultPadding - 5,
                  ),
                  child: const Text(
                    'Mật khẩu',
                    style: TextStyle(
                      color: textColor1,
                      fontSize: 18,
                    ),
                  ),
                ),
          
                Padding(
                  padding: const EdgeInsets.only(
                    left: 9 + kDefaultPadding,
                    right: 9 + kDefaultPadding,
                    bottom: 8 * kDefaultPadding + 4,
                  ),
                  child: TextFormField(
                    obscureText: true,
                    controller: _passwordController ,
                    style: const TextStyle(fontSize: 14),
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Nhập mật khẩu của bạn',
                    ),
                  ),
                ),
                SizedBox(
                  width: 150.0,
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {
                      singIn();
          
                      // Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => const HomePage()),
                      //     );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              color: colorShadow,
                              width: 1,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(12)),
                      backgroundColor: Colors.white,
                    ),
                    child: const Text(
                      'Xác nhận',
                      style: TextStyle(
                          color: textColor1,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: kDefaultPadding - 9,
                    bottom: kDefaultPadding*4-2
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Bạn chưa có tài khoản?',
                        style: TextStyle(
                            color: textColor1,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          alignment:
                              Alignment.centerLeft, // <-- had to set alignment
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.zero, // <-- had to set padding to zero
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CreatePage()),
                          );
                        },
                        child: const Text(
                          'Đăng ký',
                          style: TextStyle(
                              color: textColor2,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  AppBar LoginAppBar() {
    return AppBar(
      elevation: 0,
      toolbarHeight: 60.0,
      automaticallyImplyLeading: false,
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
