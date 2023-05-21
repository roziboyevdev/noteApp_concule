import 'dart:io';

import 'package:note/pages/signIn_page.dart';
import 'package:note/pages/signUp_page.dart';

class IntroPage {
  IntroPage() {
    introPage();
  }

  void introPage() {
    print("***** Welcome to Note App *****\n");
    print('''
================
|  1. Sign In  |
================
|  2. Sign Up  |
================
''');
    stdout.write("Please enter option: ");
    String option = stdin.readLineSync() ?? "";
    switch (option) {
      case '1':
        {
          SignIn();
          break;
        }
      case '2':
        {
          SignUp();
          break;
        }
      default:
        {
          print("This option is  not foud!!!");
        }
    }
  }
}
