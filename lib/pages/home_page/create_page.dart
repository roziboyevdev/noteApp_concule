import 'dart:io';

import 'package:note/db/data.dart';
import 'package:note/pages/home_page.dart';

import '../intro_page.dart';

class CreatePage {
  CreatePage() {
    createPage();
  }

  void createPage() {
    stdout.write("\x1B[33mPlease enter name:\x1B[0m ");
    String name = stdin.readLineSync() ?? '';
    stdout.write("\x1B[33mPlease enter note:\x1B[0m ");
    String note = stdin.readLineSync() ?? '';
    noteData.addEntries([MapEntry(name, note)]);
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
          createPage();
        }
      default:
        {
          print('Error!!!');
          exitPage();
        }
    }
  }
}
