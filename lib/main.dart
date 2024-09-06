import 'package:flutter/material.dart';
import 'package:test_techdoc/Loginpage.dart';
import 'package:test_techdoc/edit_user_page.dart';
import 'create_user_page.dart';
import 'user_list_page.dart';
import 'edit_user_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter CRUD Demo',
      home: LoginPage(),
    );
  }
}
