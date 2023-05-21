import 'dart:io';
import 'package:note/model/signUp_model.dart';
import 'package:note/pages/signIn_page.dart';
import 'package:note/db/data.dart';

class SignUp {
  SignUp() {
    signUp();
  }

  void signUp() {
    stdout.write("\x1B[33m\nPlease enter name:\x1B[0m ");
    String name = stdin.readLineSync() ?? '';
    stdout.write("\x1B[33mPlease enter password:\x1B[0m ");
    String number = stdin.readLineSync() ?? '';
    stdout.write("\x1B[33mPlease enter number:\x1B[0m ");
    String phone = stdin.readLineSync() ?? '';
    stdout.write("\x1B[33mPlease enter addres:\x1B[0m ");
    String password = stdin.readLineSync() ?? '';
    SignUpMpdel(name, password, number);
    usersData['Name'] = name;
    usersData['Number'] = number;
    usersData['Phone'] = phone;
    usersData['Password'] = password;
    allUsers.add(usersData);
    print("\x1B[32m\n***** Registration was successful! *****\x1B[0m");
    stdin.readLineSync();
    SignIn();
  }
}
