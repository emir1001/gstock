import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gstock/FrontHomepage/homepage.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(HomePage());
      },
      child: Container(
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 50),
        decoration: BoxDecoration(
          color: Colors.cyan[500],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            "Login",
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
