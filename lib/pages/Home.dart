import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrm_app/widget/HomeWidget/DrawerWidget.dart';
import 'package:hrm_app/widget/HomeWidget/HomeMiddleWidget.dart';
import 'package:hrm_app/widget/HomeWidget/HomeTopWidget.dart';
import 'package:hrm_app/widget/HomeWidget/MeetingTab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  int currentIndex = 0;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerWidget(),
      body: Container(
        color: Theme.of(context).backgroundColor,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Theme.of(context).backgroundColor,
              elevation: 0,
              leading: new IconButton(
                icon: new Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () => _scaffoldKey.currentState.openDrawer(),
              ),
            ),


            SliverList(
              delegate: SliverChildListDelegate([
                Stack(
                  children: <Widget>[
                    HomeMiddleWidget(), //TODO:: tabbar
                    HomeTopWidget(),  //TODO:: username,absent-present status
                    Center(
                      child: Container(
                        width: 120.0,
                        height: 120.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).buttonColor      //TODO:: IN button
                        ),
                        margin: EdgeInsets.only(top: 160),
                        child: Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Theme.of(context).backgroundColor
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                              child: Center(
                                child: Text(
                                  "IN",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      )
                                  ),
                                ),
                              ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).backgroundColor,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.storage),
            title: Text(""),
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            title: Text("Home"),
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
            title: Text("Home"),
          ),
        ],
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: Theme.of(context).buttonColor,
        iconSize: 25,
        showUnselectedLabels: false,
        showSelectedLabels: false,
      ),
    );
  }
}
