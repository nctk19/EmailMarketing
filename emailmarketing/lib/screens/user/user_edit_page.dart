import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emailmarketing/constant.dart';
import 'package:emailmarketing/readdata/get_user_name.dart';
import 'package:emailmarketing/screens/user/user_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UserEditPage extends StatefulWidget {
  const UserEditPage({super.key});

  @override
  State<UserEditPage> createState() => _UserEditPageState();
}

class _UserEditPageState extends State<UserEditPage> {


  final user = FirebaseAuth.instance.currentUser!;


  final _emailController = TextEditingController();
  final _sdtController = TextEditingController();
  final _diachiController = TextEditingController();
  final _ngaysinhController = TextEditingController(); 
  
  
Future<void> updateUserDetails( String sdt, String email,  String ngaysinh, String diachi) async {
  CollectionReference users = FirebaseFirestore.instance.collection('user');
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser!.uid.toString();
  users.doc(uid).update({
    'email':email,
    'sdt':sdt,
    'ngaysinh':ngaysinh,
    'diachi':diachi,
  });
  return;
}
Future fetchUserDetail() async {
  await FirebaseFirestore.instance.collection('user').doc(user.uid).get().then((ds) {
    _sdtController.text=ds.data()!['sdt'];
    _emailController.text=ds.data()!['email'];
    _ngaysinhController.text=ds.data()!['ngaysinh'];
    _diachiController.text=ds.data()!['diachi'];

  });
  }

 @override
  void initState() {

    super.initState();
    fetchUserDetail();
    
  }
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
                  child: GetUserName(documentId: user.uid),
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
                  child:  TextField(
                    controller: _sdtController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                     
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
                  child:  TextField(
                    controller: _emailController,
                    decoration: const InputDecoration(
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
                  child:  TextField(
                    controller: _ngaysinhController,
                    readOnly: true,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      //hintText: 'Enter a search term',
                    ),
                    onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context, initialDate: DateTime.now(),
                      firstDate: DateTime(1900), //DateTime.now() - not to allow to choose before today.
                      lastDate: DateTime(2100)
                  );
                  
                  if(pickedDate != null ){
                      print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                      String formattedDate = DateFormat('dd/MM/yyyy').format(pickedDate); 
                      print(formattedDate); //formatted date output using intl package =>  2021-03-16
                        //you can implement different kind of Date Format here according to your requirement

                      setState(() {
                         _ngaysinhController.text = formattedDate; //set output date to TextField value. 
                      });
                  }else{
                      print("Date is not selected");
                  }
                },
  
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
                  child:  TextField(
                    controller: _diachiController,
                    decoration: const InputDecoration(
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
                      onPressed: () {
updateUserDetails(
  _sdtController.text.toString().trim(),
    _emailController.text.toString().trim(),
    _ngaysinhController.text.toString().trim(),
    
    _diachiController.text.toString().trim(),
    
    
    
    );

ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Cập nhật thông tin User thành công!!!"),
      ),
    );
    Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const UserPage()),
                            );

                      },
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

  