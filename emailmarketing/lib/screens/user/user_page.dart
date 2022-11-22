import 'package:emailmarketing/constant.dart';
import 'package:emailmarketing/screens/login/login_page.dart';
import 'package:emailmarketing/screens/snackbar/chuyentaikhoan_snackbar.dart';
import 'package:emailmarketing/screens/snackbar/ketnoivi_snackbar.dart';
import 'package:emailmarketing/screens/snackbar/logout_snackbar.dart';
import 'package:emailmarketing/screens/user/user_edit_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
 final user = FirebaseAuth.instance.currentUser!;
 
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
                      bottom: kDefaultPadding + 11,
                       top: kDefaultPadding - 4),
                  child: const Text(
                    'CÁ NHÂN',
                    style: TextStyle(
                      color: textColor1,
                      fontSize: 22,
                    ),
                  ),
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  height: 84,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                          left: kDefaultPadding - 2,
                        ),
                        child: Stack(
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
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          left: kDefaultPadding - 2,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                top: kDefaultPadding - 8,
                                bottom: kDefaultPadding - 6,
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
                              padding: const EdgeInsets.only(),
                              child: const Text(
                                'Khách hàng',
                                style: TextStyle(
                                  color: textColor6,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(
                            top: kDefaultPadding * 2,
                            right: kDefaultPadding - 2,
                          ),
                          child: IconButton(
                            iconSize: 24,
                            icon: Image.asset('assets/images/write.png'),
                            onPressed: () {
                              Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const UserEditPage()),
                            );
                              // do something
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(
                    top: kDefaultPadding * 3 + 5,
                    left: kDefaultPadding - 2,
                    bottom: kDefaultPadding - 5,
                  ),
                  child: const Text(
                    'Thông tin',
                    style: TextStyle(
                        color: colorLine,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: kDefaultPadding - 2,
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 160,
                          height: 40,
                          margin: const EdgeInsets.only(
                            right: kDefaultPadding / 2,
                          ),
                          decoration: const BoxDecoration(
                            color: textColor1,
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            child: const Text(
                              '11/10/2000',
                              style: TextStyle(
                                color: textColor3,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 160,
                          height: 40,
                          margin: const EdgeInsets.only(
                            right: kDefaultPadding / 2,
                          ),
                          decoration: const BoxDecoration(
                            color: color2,
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            child: const Text(
                              'Phú Yên',
                              style: TextStyle(
                                color: textColor3,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 160,
                          height: 40,
                          margin: const EdgeInsets.only(
                            right: kDefaultPadding / 2,
                          ),
                          decoration: const BoxDecoration(
                            color: color1,
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            child: const Text(
                              '0382292563',
                              style: TextStyle(
                                color: textColor3,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            right: kDefaultPadding,
                            left: kDefaultPadding,
                          ),
                          height: 40,
                          margin: const EdgeInsets.only(
                            right: kDefaultPadding - 2,
                          ),
                          decoration: const BoxDecoration(
                            color: color3,
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            child: const Text(
                              'luutru.banguyen@gmail.com',
                              style: TextStyle(
                                color: textColor1,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: kDefaultPadding * 2 + 9,
                    left: kDefaultPadding - 2,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.only(
                            top: kDefaultPadding - 9,
                          ),
                          child: const Text(
                            'Thanh toán',
                            style: TextStyle(
                                color: colorLine,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.topRight,
                          margin: const EdgeInsets.only(
                            right: kDefaultPadding - 2,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(
                                  bottom: kDefaultPadding - 13,
                                ),
                                child: const Text(
                                  'Hiện có',
                                  style: TextStyle(
                                    color: textColor6,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                width: 131,
                                height: 35,
                                decoration: const BoxDecoration(
                                  color: background2,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: const Text(
                                    '1.000.000đ',
                                    style: TextStyle(
                                      color: textColor1,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  
                  padding: const EdgeInsets.only(
                    top: kDefaultPadding -13,
                    left: kDefaultPadding - 2,
                  ),
                  child: Row(
                    
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          Container(
                            width: 64,
                            height: 64,
                            padding: const EdgeInsets.only(),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: colorWallet,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(),
                            width: 24,
                            height: 24,
                            child: Image.asset(
                              'assets/images/wallet.png',
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          left: kDefaultPadding - 2,
                        ),
                        child: const Text(
                          'Kết nối ví',
                          style: TextStyle(
                              color: textColor1,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 64,
                          alignment: Alignment.topRight,
                          margin: const EdgeInsets.only(
                            right: kDefaultPadding - 2,
                          ),
                          child: Container(
                            margin: const EdgeInsets.only(
                              top: kDefaultPadding+4,
                            ),
                            alignment: Alignment.topRight,
                                    width: 100,
                                    height: 30,
                                    decoration: const BoxDecoration(
                                      color: color2,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(24)),
                                    ),
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: const Text(
                                        'Đã kết nối',
                                        style: TextStyle(
                                          color: textColor3,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.only(
                            left: kDefaultPadding-2,
                            top: kDefaultPadding*6-5,
                          ),
                          child: const Text(
                            'Tài khoản',
                            style: TextStyle(
                                color: colorLine,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                Container(
                  
                  height: 43,
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.only(
                            left: kDefaultPadding-2,
                           
                          ),
                          child: KetnoiviSnackBar(),
                        ),
                Container(
                  height: 33,
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.only(
                            left: kDefaultPadding-2,
                           
                          ),
                          child: const LogoutSnackBar(),
                        ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
