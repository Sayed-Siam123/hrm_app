import 'package:flutter/material.dart';
import 'package:hrm_app/helper/DrawerWidget.dart';
import 'package:hrm_app/pages/Home.dart';
import 'package:hrm_app/pages/Profile.dart';
import 'package:hrm_app/pages/Request.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  static final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int currentIndex = 0;
  final List<Widget> _children = [
    HomePage(scaffoldKey: _scaffoldKey,),
    RequestPage(scaffoldKey: _scaffoldKey,),
    ProfilePage(scaffoldKey: _scaffoldKey,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerWidget(scaffoldKey: _scaffoldKey,),
      backgroundColor: Theme.of(context).backgroundColor,
      body: _children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).backgroundColor,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.storage),
            title: Text("Request"),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text("Profile"),
          ),
        ],
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
          print(currentIndex.toString());

        },
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).buttonColor,
        iconSize: 25,
        showUnselectedLabels: true,
        showSelectedLabels: true,
      ),
    );
  }
}
