import 'dart:io';

import 'package:note/db/data.dart';
import 'package:note/pages/home_page.dart';

import '../intro_page.dart';

class AllNote {
  AllNote() {
    allNOtes();
  }

  void allNOtes() {
    noteData.forEach((key, value) {
      print("Name: $key\nNote: $value");
    });
    exitPage();
  }

  void exitPage() {
    print("Do you want to exit to the Home page? [Yes]y / [No]n");
    String option = stdin.readLineSync() ?? "";
    switch (option) {
      case 'y':
        {
          HomePage();
        }
      case 'n':
        {
          allNOtes();
        }
      default:
        {
          print('Error!!!');
          exitPage();
        }
    }
  }
}
