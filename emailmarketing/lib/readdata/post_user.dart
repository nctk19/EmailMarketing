import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class User {
  final String email;
  final String password;

  User({required this.email, required this.password});

  factory User.fromJson(Map<String, dynamic> json) => User(
        email: json['email'],
        password: json['password'],
      );

  Map<String, dynamic> toJson() => {
        'email': email,
        'password': password,
      };
}
List User1 = [];
Future<void> addUser(String email1,String password1) async {
User user =new User(email: email1, password: password1);
writeUser(user);
}
Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();

  return directory.path;
}
Future<File> get _localFile async {
  final path = await _localPath;
  return File('$path/user.json');
}
Future<File> writeUser(User User) async {
  final file = await _localFile;
final data = await readUser();
  User1 = data;
  User1.removeWhere((item) => item['email'] == User.email);
  User1.add(User);
  return file.writeAsString(json.encode(User1));
}
Future<File> deleteUser(String email) async {
  final file = await _localFile;
  final data = await readUser();
  User1 = data;
    
  User1.removeWhere((item) => item['email'] == email);
  return file.writeAsString(json.encode(User1));
}


Future<List> readUser() async {
  try {
    final file = await _localFile;
  final d = await json.decode(await file.readAsString());
  return d;
  } catch (e) {
    // If encountering an error, return 0
    return [];
  }
}