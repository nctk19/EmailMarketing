import 'package:emailmarketing/constant.dart';
import 'package:emailmarketing/screens/input/input_page.dart';
import 'package:emailmarketing/screens/user/user_page.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

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
                      right: kDefaultPadding + 4,
                      left: kDefaultPadding + 4,
                      bottom: kDefaultPadding + 1,
                    ),
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 0.5, color: colorShadow),
                        left: BorderSide(width: 0.5, color: colorShadow),
                        right: BorderSide(width: 0.5, color: colorShadow),
                        bottom: BorderSide(width: 0.5, color: colorShadow),
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
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.only(
                                    left: kDefaultPadding - 5,
                                    top: kDefaultPadding - 13),
                                child: const Text(
                                  'Chiến dịch 1',
                                  style: TextStyle(
                                      color: textColor1,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.topRight,
                                padding: const EdgeInsets.only(
                                    right: kDefaultPadding - 5,
                                    top: kDefaultPadding - 10),
                                child: const Text(
                                  'Ngày bắt đầu:\n10/10/2000',
                                  style: TextStyle(
                                      color: colorNotice,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            top: kDefaultPadding - 9,
                            left: kDefaultPadding - 5,
                            bottom: kDefaultPadding * 2 + 2,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // ignore: avoid_unnecessary_containers
                              Container(
                                alignment: Alignment.center,
                                width: 70,
                                height: 30,
                                margin: const EdgeInsets.only(
                                    right: kDefaultPadding - 8),
                                decoration: const BoxDecoration(
                                  color: color1,
                                ),
                                child: const Text(
                                  'Duy trì',
                                  style: TextStyle(
                                    color: textColor3,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 70,
                                height: 30,
                                margin: const EdgeInsets.only(
                                    right: kDefaultPadding - 8),
                                decoration: const BoxDecoration(
                                  color: color3,
                                ),
                                child: const Text(
                                  'Duy trì',
                                  style: TextStyle(
                                    color: textColor1,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                  color: background2,
                                ),
                                child: const Text(
                                  '+',
                                  style: TextStyle(
                                    color: textColor1,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // ignore: avoid_unnecessary_containers
                        Container(
                          padding: const EdgeInsets.only(
                            bottom: kDefaultPadding-11,
                          ),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.only(
                                    left: kDefaultPadding - 5,
                                    ),
                                child: Row(children: [
                                  Container(
                                      width: 8,
                                      height: 8,
                                      margin: const EdgeInsets.only(
                                        right: 3.0,
                                      ),
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: colorNotice,
                                      ),
                                    ),
                                  const Text("Chiến dịch được khởi chạy",style: TextStyle(
                                                color: textColor4,
                                                fontSize: 12,),),
                                ],)
                              ),
                              
            
                              Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.topRight,
                                padding: const EdgeInsets.only(
                                    right: kDefaultPadding - 11),
                                child: const Text(
                                  'Xem ngay >>',
                                  style: TextStyle(
                                      color: textColor1,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            ]
                          ),
                        )
                      ],
                    ),
                  ),
                   Container(
                    margin: const EdgeInsets.only(
                      top: kDefaultPadding + 1,
                      right: kDefaultPadding + 4,
                      left: kDefaultPadding + 4,
                      bottom: kDefaultPadding + 1,
                    ),
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 0.5, color: colorShadow),
                        left: BorderSide(width: 0.5, color: colorShadow),
                        right: BorderSide(width: 0.5, color: colorShadow),
                        bottom: BorderSide(width: 0.5, color: colorShadow),
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
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.only(
                                    left: kDefaultPadding - 5,
                                    top: kDefaultPadding - 13),
                                child: const Text(
                                  'Chiến dịch 1',
                                  style: TextStyle(
                                      color: textColor1,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.topRight,
                                padding: const EdgeInsets.only(
                                    right: kDefaultPadding - 5,
                                    top: kDefaultPadding - 10),
                                child: const Text(
                                  'Ngày bắt đầu:\n10/10/2000',
                                  style: TextStyle(
                                      color: colorNotice,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            top: kDefaultPadding - 9,
                            left: kDefaultPadding - 5,
                            bottom: kDefaultPadding * 2 + 2,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // ignore: avoid_unnecessary_containers
                              Container(
                                alignment: Alignment.center,
                                width: 70,
                                height: 30,
                                margin: const EdgeInsets.only(
                                    right: kDefaultPadding - 8),
                                decoration: const BoxDecoration(
                                  color: color1,
                                ),
                                child: const Text(
                                  'Duy trì',
                                  style: TextStyle(
                                    color: textColor3,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 70,
                                height: 30,
                                margin: const EdgeInsets.only(
                                    right: kDefaultPadding - 8),
                                decoration: const BoxDecoration(
                                  color: color3,
                                ),
                                child: const Text(
                                  'Duy trì',
                                  style: TextStyle(
                                    color: textColor1,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                  color: background2,
                                ),
                                child: const Text(
                                  '+',
                                  style: TextStyle(
                                    color: textColor1,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // ignore: avoid_unnecessary_containers
                        Container(
                          padding: const EdgeInsets.only(
                            bottom: kDefaultPadding-11,
                          ),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.only(
                                    left: kDefaultPadding - 5,
                                    ),
                                child: Row(children: [
                                  Container(
                                      width: 8,
                                      height: 8,
                                      margin: const EdgeInsets.only(
                                        right: 3.0,
                                      ),
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: colorNotice,
                                      ),
                                    ),
                                  const Text("Chiến dịch được khởi chạy",style: TextStyle(
                                                color: textColor4,
                                                fontSize: 12,),),
                                ],)
                              ),
                              
            
                              Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.topRight,
                                padding: const EdgeInsets.only(
                                    right: kDefaultPadding - 11),
                                child: const Text(
                                  'Xem ngay >>',
                                  style: TextStyle(
                                      color: textColor1,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            ]
                          ),
                        )
                      ],
                    ),
                  ),
                   Container(
                    margin: const EdgeInsets.only(
                      top: kDefaultPadding + 1,
                      right: kDefaultPadding + 4,
                      left: kDefaultPadding + 4,
                      bottom: kDefaultPadding + 1,
                    ),
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 0.5, color: colorShadow),
                        left: BorderSide(width: 0.5, color: colorShadow),
                        right: BorderSide(width: 0.5, color: colorShadow),
                        bottom: BorderSide(width: 0.5, color: colorShadow),
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
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.only(
                                    left: kDefaultPadding - 5,
                                    top: kDefaultPadding - 13),
                                child: const Text(
                                  'Chiến dịch 1',
                                  style: TextStyle(
                                      color: textColor1,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.topRight,
                                padding: const EdgeInsets.only(
                                    right: kDefaultPadding - 5,
                                    top: kDefaultPadding - 10),
                                child: const Text(
                                  'Ngày bắt đầu:\n10/10/2000',
                                  style: TextStyle(
                                      color: colorNotice,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            top: kDefaultPadding - 9,
                            left: kDefaultPadding - 5,
                            bottom: kDefaultPadding * 2 + 2,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // ignore: avoid_unnecessary_containers
                              Container(
                                alignment: Alignment.center,
                                width: 70,
                                height: 30,
                                margin: const EdgeInsets.only(
                                    right: kDefaultPadding - 8),
                                decoration: const BoxDecoration(
                                  color: color1,
                                ),
                                child: const Text(
                                  'Duy trì',
                                  style: TextStyle(
                                    color: textColor3,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 70,
                                height: 30,
                                margin: const EdgeInsets.only(
                                    right: kDefaultPadding - 8),
                                decoration: const BoxDecoration(
                                  color: color3,
                                ),
                                child: const Text(
                                  'Duy trì',
                                  style: TextStyle(
                                    color: textColor1,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                  color: background2,
                                ),
                                child: const Text(
                                  '+',
                                  style: TextStyle(
                                    color: textColor1,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // ignore: avoid_unnecessary_containers
                        Container(
                          padding: const EdgeInsets.only(
                            bottom: kDefaultPadding-11,
                          ),
                          child: Row(
                            children: [
                              // ignore: avoid_unnecessary_containers
                              Container(
                              child: Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.only(
                                    left: kDefaultPadding - 5,
                                    ),
                                child: Row(children: [
                                  Container(
                                      width: 8,
                                      height: 8,
                                      margin: const EdgeInsets.only(
                                        right: 3.0,
                                      ),
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: colorNotice,
                                      ),
                                    ),
                                  const Text("Chiến dịch được khởi chạy",style: TextStyle(
                                                color: textColor4,
                                                fontSize: 12,),),
                                ],)
                              ),
                            ),
                              
            
                              Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.topRight,
                                padding: const EdgeInsets.only(
                                    right: kDefaultPadding -11),
                                child: const Text(
                                  'Xem ngay >>',
                                  style: TextStyle(
                                      color: textColor1,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            ]
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      bottom: 61,
                    ),
                  ),
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
