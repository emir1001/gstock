import 'package:flutter/material.dart';
import 'FrontLogin/LoginPage.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
