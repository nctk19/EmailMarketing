import 'package:emailmarketing/constant.dart';
import 'package:flutter/material.dart';

class UserEditPage extends StatelessWidget {
  const UserEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height * 1.0,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      bottom: kDefaultPadding * 2 + 3,
                      top: kDefaultPadding - 4),
                  child: const Text(
                    'CHỈNH SỬA',
                    style: TextStyle(
                      color: textColor1,
                      fontSize: 22,
                    ),
                  ),
                ),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      width: 84,
                      height: 84,
                      padding: const EdgeInsets.only(),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: background2,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(),
                      width: 48,
                      height: 48,
                      child: Image.asset(
                        'assets/images/people.png',
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: kDefaultPadding * 2 + 6,
                    bottom: kDefaultPadding - 19,
                  ),
                  child: const Text(
                    'Nguyễn Văn A',
                    style: TextStyle(
                        color: textColor1,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(
                    bottom: kDefaultPadding + 4,
                  ),
                  child: const Text(
                    'Khách hàng',
                    style: TextStyle(
                      color: textColor6,
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(
                    left: kDefaultPadding + 3,
                  ),
                  child: const Text(
                    'Số điện thoại',
                    style: TextStyle(
                        color: colorLine,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 48.0,
                  margin: const EdgeInsets.only(
                      left: kDefaultPadding + 3,
                      right: kDefaultPadding + 3,
                      top: kDefaultPadding - 3,
                      bottom: kDefaultPadding - 3),
                  padding: const EdgeInsets.only(
                    left: kDefaultPadding - 3,
                  ),
                  decoration: const BoxDecoration(
                    color: colorInput,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      //hintText: 'Enter a search term',
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(
                    left: kDefaultPadding + 3,
                  ),
                  child: const Text(
                    'Email',
                    style: TextStyle(
                        color: colorLine,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 48.0,
                  margin: const EdgeInsets.only(
                      left: kDefaultPadding + 3,
                      right: kDefaultPadding + 3,
                      top: kDefaultPadding - 3,
                      bottom: kDefaultPadding - 3),
                  padding: const EdgeInsets.only(
                    left: kDefaultPadding - 3,
                  ),
                  decoration: const BoxDecoration(
                    color: colorInput,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      //hintText: 'Enter a search term',
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(
                    left: kDefaultPadding + 3,
                  ),
                  child: const Text(
                    'Ngày sinh',
                    style: TextStyle(
                        color: colorLine,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 48.0,
                  margin: const EdgeInsets.only(
                      left: kDefaultPadding + 3,
                      right: kDefaultPadding + 3,
                      top: kDefaultPadding - 3,
                      bottom: kDefaultPadding - 3),
                  padding: const EdgeInsets.only(
                    left: kDefaultPadding - 3,
                  ),
                  decoration: const BoxDecoration(
                    color: colorInput,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      //hintText: 'Enter a search term',
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(
                    left: kDefaultPadding + 3,
                  ),
                  child: const Text(
                    'Địa chỉ',
                    style: TextStyle(
                        color: colorLine,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 48.0,
                  margin: const EdgeInsets.only(
                      left: kDefaultPadding + 3,
                      right: kDefaultPadding + 3,
                      top: kDefaultPadding - 3,
                      bottom: kDefaultPadding + 13),
                  padding: const EdgeInsets.only(
                    left: kDefaultPadding - 3,
                  ),
                  decoration: const BoxDecoration(
                    color: colorInput,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      //hintText: 'Enter a search term',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    bottom: 80,
                  ),
                  child: SizedBox(
                    width: 155,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        backgroundColor: color2,
                      ),
                      child: const Text(
                        'Cập nhật',
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
        ),
      ),
    );
  }
}
