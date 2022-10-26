import 'package:emailmarketing/constant.dart';
import 'package:flutter/material.dart';

class ListNullPage extends StatelessWidget {
  const ListNullPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: ListNullAppBar(),
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
                            onPressed: () {},
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
                padding: const EdgeInsets.only(
                  top: kDefaultPadding*6+2,
                  bottom: kDefaultPadding+18,
                ),
                child: Image.asset("assets/images/post-it.png",
              width: 128,
              height: 128,
               ),
              ),
              Container(
                padding: const EdgeInsets.only(),
                child: const Text('Hiện tại chưa có chiến dịch nào, hãy tạo 1\nchiến dịch mới ngay bây giờ',
                textAlign: TextAlign.center,
                style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
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
  AppBar ListNullAppBar() {
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
              // do something
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
