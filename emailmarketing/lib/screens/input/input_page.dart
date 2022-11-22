import 'package:emailmarketing/constant.dart';
import 'package:emailmarketing/screens/list/list_page.dart';
import 'package:emailmarketing/screens/user/user_page.dart';
import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  const InputPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: InputAppBar(context),
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
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ListPage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 0.0,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              backgroundColor: background2,
                            ),
                            child: const Text(
                              'Danh sách',
                              style: TextStyle(
                                color: Colors.black,
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
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 0.0,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              backgroundColor: color1,
                              minimumSize: Size.zero, // Set this
    padding: EdgeInsets.zero,
                            ),
                            child: const Text(
                              'Thêm chiến dịch',
                              style: TextStyle(
                                color: Colors.white,
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
                      left: kDefaultPadding + 3,
                      top: kDefaultPadding + 8,
                    ),
                    child: const Text(
                      'Tên chiến dịch',
                      style: TextStyle(
                          color: textColor1,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 48.0,
                    margin: const EdgeInsets.only(
                        left: kDefaultPadding + 3,
                        right: kDefaultPadding + 3,
                        top: kDefaultPadding - 3),
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
                      top: kDefaultPadding + 3,
                    ),
                    child: const Text(
                      'Số lượng mail cần gửi',
                      style: TextStyle(
                          color: textColor1,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 48.0,
                    margin: const EdgeInsets.only(
                        left: kDefaultPadding + 3,
                        right: kDefaultPadding + 3,
                        top: kDefaultPadding - 3),
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
                      top: kDefaultPadding + 3,
                    ),
                    child: const Text(
                      'Tạo note',
                      style: TextStyle(
                          color: textColor1,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                      height: 48.0,
                      margin: const EdgeInsets.only(
                          left: kDefaultPadding + 3,
                          right: kDefaultPadding + 3,
                          top: kDefaultPadding - 3),
                      padding: const EdgeInsets.only(
                        left: kDefaultPadding - 3,
                      ),
                      decoration: const BoxDecoration(
                        color: colorInput,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                              left: kDefaultPadding - 5,
                            ),
                            margin: const EdgeInsets.only(
                              right: kDefaultPadding-14
                            ),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                            ),
                            //width: 150,
                            height: 30,
                            child: Row(
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // ignore: avoid_unnecessary_containers
                                Container(
                                  padding: const EdgeInsets.only(
                                    right: kDefaultPadding+3
                                  ),
                                  child: const Text(
                                    'Duy trì',
                                    style: TextStyle(
                                      color: textColor1,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Container(
                                  
                                  alignment: Alignment.topCenter,
                                  child: const Text(
                                  '+',
                                  style: TextStyle(
                                    color: textColor1,
                                    fontSize: 18,
                                  ),
                                ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: kDefaultPadding - 5,
                            ),
                            margin: const EdgeInsets.only(
                              right: kDefaultPadding-14
                            ),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                            ),
                            //width: 102,
                            height: 30,
                            child: Row(
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // ignore: avoid_unnecessary_containers
                                Container(
                                  padding: const EdgeInsets.only(
                                    right: kDefaultPadding+3
                                  ),
                                  child: const Text(
                                    'Duy trì',
                                    style: TextStyle(
                                      color: textColor1,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Container(
                                  
                                  alignment: Alignment.topCenter,
                                  child: const Text(
                                  '+',
                                  style: TextStyle(
                                    color: textColor1,
                                    fontSize: 18,
                                  ),
                                ),
                                ),
                              ],
                            ),
                          )
                        
                        ],
                      )),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(
                      left: kDefaultPadding + 3,
                      top: kDefaultPadding + 3,
                    ),
                    child: const Text(
                      'Nội dung mail',
                      style: TextStyle(
                          color: textColor1,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 274.0,
                    margin: const EdgeInsets.only(
                        left: kDefaultPadding + 3,
                        right: kDefaultPadding + 3,
                        top: kDefaultPadding - 3),
                    padding: const EdgeInsets.only(
                      left: kDefaultPadding - 3,
                    ),
                    decoration: const BoxDecoration(
                      color: colorInput,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: const TextField(
                      maxLines: 30,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        //hintText: 'Enter a search term',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        top: kDefaultPadding + 11, bottom: kDefaultPadding*4),
                    child: SizedBox(
                      width: 150.0,
                      height: 50.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)),
                          backgroundColor: color2,
                        ),
                        child: const Text(
                          'Xác nhận',
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
            )),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  AppBar InputAppBar(BuildContext context) {
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
          "THÊM CHIẾN DỊCH",
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
          color: background2,
        ),
      ),
    );
  }
}
