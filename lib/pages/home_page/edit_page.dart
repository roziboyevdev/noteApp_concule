import 'dart:io';

import 'package:note/pages/home_page.dart';
import 'package:note/pages/intro_page.dart';

import '../../db/data.dart';

class EditPage {
  EditPage() {
    editPage();
  }

  void editPage() {
    noteData.forEach((key, value) {
      print("Name: $key\nNote: $value");
    });
    stdout.write("\x1B[33m\nPlease enter note name:\x1B[0m ");
    String name = stdin.readLineSync() ?? '';
    noteData.forEach((key, value) {
      if (name == key) {
        stdout.write("\x1B[33m\nPlease enter new note:\x1B[0m ");
        String note = stdin.readLineSync() ?? '';
        noteData['$key'] = note;
        exitPage();
      }
    });
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
          editPage();
        }
      default:
        {
          print('Error!!!');
          exitPage();
        }
    }
  }
}
