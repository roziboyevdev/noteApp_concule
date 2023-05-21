import 'dart:io';

import '../db/data.dart';
import 'home_page.dart';

Map usersData = {};

class SignIn {
  SignIn() {
    signIn();
  }

  void signIn() {
    print("\x1B[32m***** Sign In *****\x1B[0m\n");
    stdout.write("\x1B[33mPlease enter name:\x1B[0m ");
    String name = stdin.readLineSync() ?? '';
    stdout.write("\x1B[33mPlease enter password:\x1B[0m ");
    String password = stdin.readLineSync() ?? '';
    bool nameChecker = false;
    bool passwordChecker = false;
    for (int i = 0; i < allUsers.length; i++) {
      for (String values in allUsers[i].keys) {
        if (values == 'Name') {
          if (allUsers[i][values] == name) nameChecker = true;
        }
        if (values == 'Password') {
          if (allUsers[i][values] == password) passwordChecker = true;
        }
      }
    }
    if (nameChecker == true && passwordChecker == true) {
      print('\x1B[32m\n***** Login success! *****\x1B[0m\n');
      HomePage();
    } else {
      SignIn();
    }
  }
}
