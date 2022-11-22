import 'package:emailmarketing/constant.dart';
import 'package:emailmarketing/screens/list/list_page.dart';
import 'package:emailmarketing/screens/user/user_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: HomeAppBar(context),
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
            top: kDefaultPadding / 2,
          ),
          decoration: const BoxDecoration(
            color: background2,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24.0),
                topRight: Radius.circular(24.0)),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: kDefaultPadding,
                    right: kDefaultPadding - 3,
                    left: kDefaultPadding - 3,
                    bottom: kDefaultPadding - 14,
                  ),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  padding: const EdgeInsets.only(
                                      left: kDefaultPadding ,
                                      bottom: kDefaultPadding - 12,
                                      top: kDefaultPadding - 3),
                                  child: const Text(
                                    'Chiến dịch 1',
                                    style: TextStyle(
                                        color: textColor1,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  padding: const EdgeInsets.only(
                                      left: kDefaultPadding ,
                                      bottom: kDefaultPadding + 13),
                                  child: const Text(
                                    'Ngày bắt đầu: 10/10/2000',
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 0.75),
                                        fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              alignment: Alignment.topRight,
                              margin: const EdgeInsets.only(
                                right: kDefaultPadding ,
                                top: kDefaultPadding + 2,
                              ),
                              child: Container(
                                width: 24,
                                height: 24,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: color2,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: kDefaultPadding,
                          right: kDefaultPadding,
                          bottom: kDefaultPadding - 14,
                        ),
                        height: 1,
                        color: colorLine,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.only(
                          left: kDefaultPadding,
                          bottom: kDefaultPadding + 1,
                        ),
                        child: const Text(
                          'Thông số',
                          style: TextStyle(
                              color: textColor1,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            padding:
                                const EdgeInsets.only(left: kDefaultPadding),
                            child: const Text(
                              'Số lượng mail đã gửi:',
                              style: TextStyle(
                                color: textColor1,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: kDefaultPadding / 2),
                            child: const Text(
                              '1000',
                              style: TextStyle(
                                color: textColor2,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: kDefaultPadding - 16),
                            child: const Text(
                              'người dùng',
                              style: TextStyle(
                                color: textColor1,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          top: kDefaultPadding - 11,
                          left: kDefaultPadding,
                          right: kDefaultPadding,
                          bottom: kDefaultPadding - 12,
                        ),
                        height: 1,
                        color: colorLine,
                      ),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            padding:
                                const EdgeInsets.only(left: kDefaultPadding),
                            child: const Text(
                              'Tình trạng gửi mail:',
                              style: TextStyle(
                                color: textColor1,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Container(
                            padding:
                                const EdgeInsets.only(left: kDefaultPadding),
                            child: const Text(
                              'Hoàn thành',
                              style: TextStyle(
                                color: textColor1,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          top: kDefaultPadding - 11,
                          left: kDefaultPadding,
                          right: kDefaultPadding ,
                          bottom: kDefaultPadding + 1,
                        ),
                        height: 1,
                        color: colorLine,
                      ),
                      Container(
                        transformAlignment: Alignment.center,
                        margin: const EdgeInsets.only(
                          left: kDefaultPadding,
                          right: kDefaultPadding ,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // ignore: avoid_unnecessary_containers
                            Container(
                              width: 100,
                              height: 50,
                              decoration: const BoxDecoration(
                                color: color1,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.only(
                                      top: kDefaultPadding - 16,
                                      bottom: kDefaultPadding - 16,
                                    ),
                                    child: const Text(
                                      'Đã mở',
                                      style: TextStyle(
                                        color: textColor3,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: const Text(
                                      '780',
                                      style: TextStyle(
                                        color: textColor3,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 50,
                              decoration: const BoxDecoration(
                                color: color2,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.only(
                                      top: kDefaultPadding - 16,
                                      bottom: kDefaultPadding - 16,
                                    ),
                                    child: const Text(
                                      'Đã xem',
                                      style: TextStyle(
                                        color: textColor3,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: const Text(
                                      '750',
                                      style: TextStyle(
                                        color: textColor3,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 50,
                              decoration: const BoxDecoration(
                                color: color3,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.only(
                                      top: kDefaultPadding - 16,
                                      bottom: kDefaultPadding - 16,
                                    ),
                                    child: const Text(
                                      'Spam',
                                      style: TextStyle(
                                        color: textColor1,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: const Text(
                                      '14',
                                      style: TextStyle(
                                        color: textColor1,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        transformAlignment: Alignment.center,
                        padding: const EdgeInsets.only(
                          top: kDefaultPadding - 6,
                          right: kDefaultPadding - 15,
                          left: kDefaultPadding - 15,
                          bottom: kDefaultPadding - 17,
                        ),
                        child: SizedBox(
                          width: 370.0,
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
                                  borderRadius: BorderRadius.circular(8)),
                              backgroundColor:
                                  Color.fromRGBO(200, 242, 255, 1.0),
                            ),
                            child: const Text(
                              'Xem danh sách chuyến dịch đã chạy',
                              style: TextStyle(
                                  color: textColor2,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    
                    right: kDefaultPadding - 3,
                    left: kDefaultPadding - 3,
                    
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.only(
                            left: kDefaultPadding - 12,
                            bottom: kDefaultPadding - 12,
                            top: kDefaultPadding - 5),
                        child: const Text(
                          'Thống kế',
                          style: TextStyle(
                              color: textColor1,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      // ignore: avoid_unnecessary_containers
                      PieChart(
                        dataMap: dataMap,
                        colorList: colorList,
                        chartRadius: MediaQuery.of(context).size.width / 4,
                        //centerText: "Budget",
                        ringStrokeWidth: 30,
                        animationDuration: const Duration(seconds: 1),
                        chartType: ChartType.ring,
                        chartValuesOptions: const ChartValuesOptions(
                          showChartValues: false,
                          //showChartValuesOutside: false,
                          //showChartValuesInPercentage: false,
                          //showChartValueBackground: false
                        ),
                        legendOptions: const LegendOptions(
                            showLegends: false,
                            legendShape: BoxShape.circle,
                            legendTextStyle: TextStyle(fontSize: 12),
                            legendPosition: LegendPosition.bottom,
                            showLegendsInRow: true),
                      ),
                      Container(
                        
                        padding: const EdgeInsets.only(
                          top: kDefaultPadding - 9,
                          left: kDefaultPadding ,
                          right: kDefaultPadding ,
                          bottom: kDefaultPadding + 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // ignore: avoid_unnecessary_containers
                            Container(
                              
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    
                                    padding: const EdgeInsets.only(
                                      top: kDefaultPadding - 14,
                                      right: kDefaultPadding - 12,
                                    ),
                                    height: 40,
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 8,
                                      height: 8,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: color2,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    
                                    height: 40,
                                    alignment: Alignment.topLeft,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                      height: 18,
                                          margin: const EdgeInsets.only(
                                              bottom: kDefaultPadding - 16
                                              ),
                                          child: const Text(
                                            'Đã xem',
                                            style: TextStyle(
                                              color: textColor4,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 18,
                                          
                                          margin: const EdgeInsets.only(),
                                          child: const Text(
                                            '12.423',
                                            style: TextStyle(
                                                color: textColor5,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                           // ignore: avoid_unnecessary_containers
                            Container(
                              
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    
                                    padding: const EdgeInsets.only(
                                      top: kDefaultPadding - 14,
                                      right: kDefaultPadding - 12,
                                    ),
                                    height: 40,
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 8,
                                      height: 8,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: color1,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    
                                    height: 40,
                                    alignment: Alignment.topLeft,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                      height: 18,
                                          margin: const EdgeInsets.only(
                                              bottom: kDefaultPadding - 16
                                              ),
                                          child: const Text(
                                            'Đã mở',
                                            style: TextStyle(
                                              color: textColor4,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 18,
                                          
                                          margin: const EdgeInsets.only(),
                                          child: const Text(
                                            '12.423',
                                            style: TextStyle(
                                                color: textColor5,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                           // ignore: avoid_unnecessary_containers
                            Container(
                              
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    
                                    padding: const EdgeInsets.only(
                                      top: kDefaultPadding - 14,
                                      right: kDefaultPadding - 12,
                                    ),
                                    height: 40,
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 8,
                                      height: 8,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: color3,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    
                                    height: 40,
                                    alignment: Alignment.topLeft,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                      height: 18,
                                          margin: const EdgeInsets.only(
                                              bottom: kDefaultPadding - 16
                                              ),
                                          child: const Text(
                                            'Spam',
                                            style: TextStyle(
                                              color: textColor4,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 18,
                                          
                                          margin: const EdgeInsets.only(),
                                          child: const Text(
                                            '12.423',
                                            style: TextStyle(
                                                color: textColor5,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                           // ignore: avoid_unnecessary_containers
                            Container(
                              
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    
                                    padding: const EdgeInsets.only(
                                      top: kDefaultPadding - 14,
                                      right: kDefaultPadding - 12,
                                    ),
                                    height: 40,
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 8,
                                      height: 8,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: background2,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    
                                    height: 40,
                                    alignment: Alignment.topLeft,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                      height: 18,
                                          margin: const EdgeInsets.only(
                                              bottom: kDefaultPadding - 16
                                              ),
                                          child: const Text(
                                            'Khác',
                                            style: TextStyle(
                                              color: textColor4,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 18,
                                          
                                          margin: const EdgeInsets.only(),
                                          child: const Text(
                                            '12.423',
                                            style: TextStyle(
                                                color: textColor5,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                           
                            ],
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
      floatingActionButton: SizedBox(
        height: 64.0,
        width: 64.0,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: color1,
              onPressed: () {},
              //tooltip: "Email",
              child: Image.asset(
                'assets/images/email.jpg',
                width: 24,
                height: 24,
              )),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  AppBar HomeAppBar(BuildContext context) {
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
          "TRANG CHỦ" ,
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      actions: <Widget>[
    // ignore: avoid_unnecessary_containers
    Container(
      padding: const EdgeInsets.only(
        right: kDefaultPadding
      ),
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

Map<String, double> dataMap = {
  
  
  "Spam": 740,
  "Khác": 240,
  "Đã mở": 750,
  "Đã xem": 780,
};

List<Color> colorList = [
  
  color3,
  background2,
  color1,
  color2,
];
