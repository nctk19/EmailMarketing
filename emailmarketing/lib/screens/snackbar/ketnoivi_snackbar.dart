import 'package:emailmarketing/constant.dart';
import 'package:emailmarketing/screens/snackbar/payment_snackbar.dart';
import 'package:emailmarketing/vd.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class KetnoiviSnackBar extends StatelessWidget {
   bool? _checked = false;

  KetnoiviSnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    //final paymentController = Get.put(PaymentController());
    return  GestureDetector(
                        onTap: (){
                           showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24)),
              ),
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return StatefulBuilder(// this is new
                    builder: (BuildContext context, StateSetter setState) {
                  // ignore: sized_box_for_whitespace
                  return Container(
                      height: 399,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(
                              left: kDefaultPadding + 1,
                              top: kDefaultPadding + 15,
                            ),
                            child: const Text(
                              'Kết nối ví',
                              style: TextStyle(
                                  color: textColor1,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(
                              left: kDefaultPadding + 1,
                              right: kDefaultPadding + 1,
                              top: kDefaultPadding - 12,
                            ),
                            child: const Text(
                              'Chọn loại ví mà bạn sẽ sử dụng để thanh toán các khoản chi tiêu bây giờ và sau này.',
                              style: TextStyle(
                                color: colorLine,
                                fontSize: 14,
                                //fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          Container(
                              alignment: Alignment.topLeft,
                              padding: const EdgeInsets.only(
                                left: kDefaultPadding + 1,
                                right: kDefaultPadding + 1,
                                top: kDefaultPadding + 13,
                              ),
                              child: RichText(
                                text: const TextSpan(
                                  text: 'Chấp thuận ',
                                  style: TextStyle(
                                    color: textColor1,
                                    fontSize: 18,
                                    //fontWeight: FontWeight.bold
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Điều khoản dịch vụ',
                                        style: TextStyle(color: color2)),
                                    TextSpan(text: ' và '),
                                    TextSpan(
                                        text: 'chính sách bảo mật',
                                        style: TextStyle(color: color2)),
                                  ],
                                ),
                              )),
                          Container(
                              height: 30,
                              
                              margin: const EdgeInsets.only(
                                left: kDefaultPadding+1,
                                top: kDefaultPadding,
                                ),
                                padding: const EdgeInsets.only(
                                left: 0,
                                ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children:[
                                  Transform.scale(
                                    
                                    scale: 1.7,
                                    child: SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: Checkbox(
                                        checkColor: textColor3,
                                        activeColor: color2,
                                        // ignore: prefer_const_constructors
                                        side: BorderSide(
                                                          color: color2, 
                                                          width: 2,
                                                        ),
                                        onChanged: (bool? value) {
                                          setState(() {
                                            _checked = value;
                                          });
                                        },
                                        value: _checked,
                                      ),
                                    ),
                                  ),
                                  Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(
                              left: kDefaultPadding -5,
                            ),
                            child: const Text(
                              'Tôi đã đọc và chấp thuận',
                              style: TextStyle(
                                  color: textColor1,
                                  fontSize: 18,
                                  ),
                            ),
                          ),
                                ],
                              )),
                          Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(
                              left: kDefaultPadding + 1,
                              top: kDefaultPadding*2 + 5,
                            ),
                            child: const Text(
                              'Chọn loại ví',
                              style: TextStyle(
                                  color: textColor1,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: kDefaultPadding + 1,
                              right: kDefaultPadding + 1,
                            ),
                            child: Container(
                              margin: const EdgeInsets.only(
                                top: kDefaultPadding +9,
                              ),
                              decoration: const BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                      width: 0.5, color: colorShadow),
                                  bottom: BorderSide(
                                      width: 0.5, color: colorShadow),
                                  left: BorderSide(
                                      width: 0.5, color: colorShadow),
                                  right: BorderSide(
                                      width: 0.5, color: colorShadow),
                                ),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(4),
                                  bottomRight: Radius.circular(4),
                                  topLeft: Radius.circular(4),
                                  bottomLeft: Radius.circular(4),
                                ),
                              ),
                              child: SizedBox(
                                width: 370.0,
                                height: 50.0,
                                child: ElevatedButton(
                                  onPressed: () async {
                                    if (_checked==true)
                                    {
                                        Navigator.pop(context);
                                    //paymentController.makePayment(amount: '5', currency: 'USD');
                                    await makePayment();
                                    }
                                    },
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.only(
                                      left: kDefaultPadding + 3,
                                    ),
                                    elevation: 0.0,
                                    shadowColor: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4)),
                                    backgroundColor: textColor3,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.only(
                    right: kDefaultPadding,
                  ),
                  child: Image.asset("assets/images/Stripe-Payment-Logo.png",
                width: 50,
                height: 50,
                 ),
                                        ),
                                        Container(
                                          child: const Text(
                                      'Payment',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                        ),
                                      ],
                                    ),
                                ),
                              ),
                            ),
                          ),
                          
                        ],
                      ));
                });
              });
       
                        },
                        child: Stack(
                          
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
                      );
  }
}
