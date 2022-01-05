// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Borrow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey[200]))),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Enter your email",
                hintStyle: TextStyle(color: Colors.black),
                border: InputBorder.none),
          ),
        ),
        Container(
          margin: EdgeInsets.all(25),
          child: FlatButton(
            child: Text(
              'Test',
              style: TextStyle(fontSize: 20.0),
            ),
            color: Colors.blueAccent,
            textColor: Colors.white,
            onPressed: () {
              //Get.snackbar("GStock ", "Componant aded with succes");
              Get.defaultDialog();
            },
          ),
        ),
      ],
    );
  }
}

class AlertDialog {}
