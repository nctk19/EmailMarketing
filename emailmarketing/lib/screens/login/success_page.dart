import 'package:emailmarketing/constant.dart';
import 'package:emailmarketing/screens/login/login_page.dart';
import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height * 1.0,
          decoration: const BoxDecoration(
           color: Colors.white,
          ),
          child: Column(
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(
                    bottom:  kDefaultPadding + 5.76,
                    top: 13.64 + kDefaultPadding*7),
                child: const Text(
                  'Thành công',
                  style: TextStyle(
                      color: textColor2,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(
                  bottom: kDefaultPadding*3+19.12,
                ),
                child: const Text(
                  'Bạn đã đăng ký thành công',
                  style: TextStyle(
                    color: Color(0xFF747D8C),
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  bottom: kDefaultPadding*6+3.28,
                ),
                child: Image.asset("assets/images/success.jpg",
              width: 254.15,
              height: 203.32,
               ),
              ),
              
              
              SizedBox(
                width: 310.5,
                height: 36.8,
                child: ElevatedButton(
                  onPressed: () {

                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(                        
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: color2,
                  ),
                  child: const Text(
                    'Quay lại đăng nhập',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
