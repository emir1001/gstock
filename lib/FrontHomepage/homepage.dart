import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../FrontLogin/LoginPage.dart';
import 'borrow.dart';
import 'composantScreen.dart';
import 'topbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Home page '),
            automaticallyImplyLeading: false,
            backgroundColor: Colors.cyan,
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(text: 'Home', icon: Icon(Icons.home)),
                Tab(text: 'Add component ', icon: Icon(Icons.add_box)),
                Tab(
                    text: 'Borrow component ',
                    icon: Icon(Icons.auto_awesome_mosaic_sharp)),
              ],
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/test.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: TabBarView(
              children: [
                Center(child: Text('')),
                Center(child: ComposantScreen()),
                Center(child: Borrow()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
