import 'package:emailmarketing/constant.dart';
import 'package:emailmarketing/screens/login/login_page.dart';
import 'package:flutter/material.dart';

class KetnoiviSnackBar extends StatelessWidget {
  const KetnoiviSnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
    alignment: Alignment.centerLeft, // <-- had to set alignment
    padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
  ),
      onPressed: () {

        
        Scaffold.of(context).showBottomSheet(
    (context) => Stack(
        alignment: Alignment.bottomCenter,
        children: [
          GestureDetector(
            
            child: Container(
                height: double.infinity,
                width: double.infinity,
                color: colorLine
                ),
          ),
          Container(
            height: 399,
            width: double.infinity,
            
            decoration: const BoxDecoration(
                color: textColor3,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24))),
            // ignore: avoid_unnecessary_containers
            child: Container(
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
                    top: kDefaultPadding -12,
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
                    top: kDefaultPadding +13,
                  ),
                  child: 

RichText(

  text: const TextSpan(
    text: 'Chấp thuận ',
    style: TextStyle(
      color: textColor1,
                        fontSize: 18,
                        //fontWeight: FontWeight.bold
                      ),
    children: <TextSpan>[
      TextSpan(text: 'Điều khoản dịch vụ', style: TextStyle(color: color2)),
      TextSpan(text: ' và '),
      TextSpan(text: 'chính sách bảo mật', style: TextStyle(color: color2)),
    ],
  ),
)
                ),
                





                Container(
                  padding: const EdgeInsets.only(
                    left: kDefaultPadding+1,
                    right: kDefaultPadding+1,
                  ),
                  child: Container(
                        margin: const EdgeInsets.only(
                          top: kDefaultPadding*2 +13,
                        ),
                        
                         decoration: const BoxDecoration(
                          
                          border: Border(
                            top: BorderSide(width: 0.5, color: colorShadow),
                            bottom: BorderSide(width: 0.5, color: colorShadow),
                            left: BorderSide(width: 0.5, color: colorShadow),
                            right: BorderSide(width: 0.5, color: colorShadow),
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
                            onPressed: () {
                              
               Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.only(
                                left: kDefaultPadding+3,
                              ),
                              elevation: 0.0,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              backgroundColor: textColor3,
                            ),
                            child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '0382292563',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: kDefaultPadding+1,
                    right: kDefaultPadding+1,
                  ),
                  child: Container(
                        margin: const EdgeInsets.only(
                          top: kDefaultPadding+4,
                        ),
                        
                         decoration: const BoxDecoration(
                          
                          border: Border(
                            top: BorderSide(width: 0.5, color: colorShadow),
                            bottom: BorderSide(width: 0.5, color: colorShadow),
                            left: BorderSide(width: 0.5, color: colorShadow),
                            right: BorderSide(width: 0.5, color: colorShadow),
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
                            onPressed: () {
                              
               Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.only(
                                left: kDefaultPadding+3,
                              ),
                              elevation: 0.0,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              backgroundColor: textColor3,
                            ),
                            child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '0789429140',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
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
    backgroundColor: Colors.transparent);
      },
      child: const Text(
                            'Chuyển tài khoản',
                            style: TextStyle(
                                color: color2,
                                fontSize: 18,),
                          ),
    );
  }
}
