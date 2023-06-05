import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emailmarketing/constant.dart';
import 'package:emailmarketing/screens/list/list_page.dart';
import 'package:emailmarketing/screens/user/user_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

// document list 
  List<String> docIDs = [];
List<String> emaillistsend=[];
List<String> attachments = [];
  bool isHTML = false;
// get docIDs
  Future getDocId() async {     
   FirebaseFirestore.instance.collection('email').get().then((value) {
  value.docs.forEach((element) {
    
    docIDs.add(element.data()["email"]);
    
  });
});
  }

 final _nameController = TextEditingController();
  final _soluongController = TextEditingController();
  final _noidungController = TextEditingController();
  final _ngaybatdatController = DateFormat('dd/MM/yyyy').format(DateTime.now());
  final user = FirebaseAuth.instance.currentUser!;

createListemail(List<String> emaillist, int emailcount) async {
emaillist.shuffle();
print('emaillistsend');
print(emailcount);
for (var i = 1; i < emailcount; i++) {
      
      emaillistsend.add(emaillist[i]);
      print(emaillistsend.length);
    }
   print(emaillistsend.length); 
sendMail(_noidungController.text.trim(),_nameController.text.trim(),emaillistsend,emaillist[0]);
    }
  
  
sendMail(String emailbody, String emailsubject,List<String> emaillist, String emailrecipients) async {


final Email email = Email(
  body: emailbody+"<br>Xin lỗi vì đã làm phiền bạn!<br>Hiện tại mình đang làm đề án tốt nghiệp nên cần gửi email để test chức năng của App nên nếu bạn nhận được email này thì mình xin gửi lời cảm ơn vì sự hỗ trợ của bạn.<br>",
  subject: emailsubject,
  recipients: [emailrecipients],
  // cc: ['cc@example.com'],
  bcc: emaillist,
  attachmentPaths: attachments,
  isHTML: isHTML,
  );

    String platformResponse;

    try {
      await FlutterEmailSender.send(email);
      platformResponse = 'Success send email!!!';
    } catch (error) {
      print(error);
      platformResponse = error.toString();
    }

    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(platformResponse),
      ),
    );
    }

void _openImagePicker() async {
    final picker = ImagePicker();
    XFile? pick = await picker.pickImage(source: ImageSource.gallery);
    //PickedFile? pick = await picker.getImage(source: ImageSource.gallery);
    if (pick != null) {
      setState(() {
        attachments.add(pick.path);
      });
    }
  }

  void _removeAttachment(int index) {
    setState(() {
      attachments.removeAt(index);
    });
  }

  Future<void> _attachFileFromAppDocumentsDirectoy() async {
    try {
      final appDocumentDir = await getApplicationDocumentsDirectory();
      final filePath = '${appDocumentDir.path}/file.txt';
      final file = File(filePath);
      await file.writeAsString('Text file in app directory');

      setState(() {
        attachments.add(filePath);
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Failed to create file in applicion directory'),
        ),
      );
    }
  }


 Future<void> addChiendich(String name, String noidung, String ngaybatdau, int soluong) async {
  CollectionReference users = FirebaseFirestore.instance.collection('chiendich');
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser!.uid.toString();
  users.add({
    'name':name,
    'ngaybatdau':ngaybatdau,
    'uid':uid,
    'soluong':soluong,
    'noidung':noidung,
  });
  return;
}

@override
  void dispose() {
    _nameController.dispose();
    _soluongController.dispose();
    _noidungController.dispose();
    
    super.dispose();
  }
@override
  // ignore: must_call_super
  initState() {
    // ignore: avoid_print

    getDocId();
  }
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
                    child:  TextField(
                      controller: _nameController,
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
                    child:  TextField(
                      controller: _soluongController,
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
                    child:  TextField(
                      controller: _noidungController,
                      maxLines: 30,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        //hintText: 'Enter a search term',
                      ),
                    ),
                  ),
                  CheckboxListTile(
                    
              contentPadding:
                  const EdgeInsets.only(left: kDefaultPadding + 3,
                        right: kDefaultPadding + 3,),
              title: const Text('HTML'),
              onChanged: (bool? value) {
                if (value != null) {
                  setState(() {
                    isHTML = value;
                  });
                }
              },
              value: isHTML,
            ),
                  Container(
                    
                      padding: const EdgeInsets.only(
                        left: kDefaultPadding + 3,
                        right: kDefaultPadding + 3,
                      ),
                    child: Column(
                                  children: <Widget>[
                    for (var i = 0; i < attachments.length; i++)
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              attachments[i],
                              softWrap: false,
                              overflow: TextOverflow.fade,
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.remove_circle),
                            onPressed: () => {_removeAttachment(i)},
                          )
                        ],
                      ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        icon: Icon(Icons.attach_file),
                        onPressed: _openImagePicker,
                      ),
                    ),
                    TextButton(
                      child: const Text('Attach file in app documents directory',style: TextStyle(
                          color: textColor2,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),),
                      onPressed: () => _attachFileFromAppDocumentsDirectoy(),
                    ),
                                  ],
                                ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        top: kDefaultPadding + 11, bottom: kDefaultPadding*4),
                    child: SizedBox(
                      width: 150.0,
                      height: 50.0,
                      child: ElevatedButton(
                        onPressed: () {  
                          addChiendich(
    _nameController.text.trim(),
    _noidungController.text.trim(),
    _ngaybatdatController,
    int.parse(_soluongController.text.trim()),
  );  

  
  createListemail(docIDs,int.parse(_soluongController.text.trim()));
  
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








 