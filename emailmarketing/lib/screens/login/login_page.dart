import 'package:emailmarketing/constant.dart';
import 'package:emailmarketing/screens/login/res_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: LoginAppBar(),
      body: SingleChildScrollView(
        child: Container(
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
                    onPressed: () {},
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
                                builder: (context) => const ResPage()),
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
