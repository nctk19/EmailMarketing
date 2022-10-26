import 'package:emailmarketing/constant.dart';
import 'package:emailmarketing/screens/login/success_page.dart';
import 'package:flutter/material.dart';

class ResPage extends StatelessWidget {
  const ResPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: ResAppBar(context),
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
                    'Đăng Ký',
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
                    'Tên của bạn',
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
                      labelText: 'Nhập tên của bạn',
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
                    'Số điện thoại',
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
                      labelText: 'Nhập số điện thoại của bạn',
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
                    bottom: 4 * kDefaultPadding + 8,
                  ),
                  child: TextFormField(
                    style: const TextStyle(fontSize: 14),
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Nhập mật khẩu của bạn',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    bottom: 107,
                  ),
                  child: SizedBox(
                    width: 150.0,
                    height: 50.0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SuccessPage()),
                            );
                          
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  AppBar ResAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 60.0,
      automaticallyImplyLeading: false,
      leadingWidth: 64.0,
      leading: Container(
        margin: const EdgeInsets.only(
          left: 18,
          top: 14,
        ),
        child: SizedBox(
          width: 40.0,
          height: 40.0,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  side: const BorderSide(
                      color: colorShadow, width: 1, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(8)),
              backgroundColor: Colors.white,
            ),
            child: const Text(
              '<',
              style: TextStyle(
                  color: textColor1, fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
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
