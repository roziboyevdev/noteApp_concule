import 'dart:io';

import 'package:note/pages/home_page/create_page.dart';
import 'package:note/pages/home_page/edit_page.dart';
import 'package:note/pages/home_page/show_notes_page.dart';

class HomePage {
  HomePage() {
    homePage();
  }

  void homePage() {
    print('''
======================
|   1. Create note   |
======================
|   2. Edit note     |
======================
|   3. Show note     |
======================
|   4. Exit          |
======================
''');
    stdout.write('Please enter option: ');
    String option = stdin.readLineSync() ?? "";
    switch (option) {
      case '1':
        {
          CreatePage();
          break;
        }
      case '2':
        {
          EditPage();
          break;
        }
      case '3':
        {
          AllNote();
          break;
        }
      case '4':
        {
          break;
        }
    }
  }
}
