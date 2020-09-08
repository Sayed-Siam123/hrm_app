import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'EventsTab.dart';
import 'MeetingTab.dart';
import 'NotificationTab.dart';
import 'ViewAllTab.dart';

class HomeMiddleWidget extends StatefulWidget {
  @override
  _HomeMiddleWidgetState createState() => _HomeMiddleWidgetState();
}

class _HomeMiddleWidgetState extends State<HomeMiddleWidget> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 70),
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      color: Theme.of(context).accentColor,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0,90,0,0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.info_outline,color: Theme.of(context).buttonColor,),
              onPressed: (){
                print("Pressed");
              },
            ),
            Text("Full month view",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w500),
              ),),
            SizedBox(height: 5,),
            Padding(
              padding: EdgeInsets.fromLTRB(30,30,30,30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Notifications",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.w500),
                    ),),
                  Text("View All",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.w500,color: Colors.red.shade500),
                    ),)
                ],
              ),
            ),
            Card(
              shadowColor: Colors.grey.withOpacity(1),
              color: Colors.white,
              child: Container(
                height: 80,
                width: MediaQuery.of(context).size.width*.9,
                child: ListTile(
                  title: Text("Salary Notification",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500,color: Colors.red.shade500),
                    ),),
                  subtitle: Text("Your salary deposited. Thank you",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 13,color: Colors.black87),
                    ),),
                ),
              ),
            ),
            Card(
              shadowColor: Colors.grey.withOpacity(1),
              color: Colors.white,
              child: Container(
                height: 80,
                width: MediaQuery.of(context).size.width*.9,
                child: ListTile(
                  title: Text("Salary Notification",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500,color: Colors.red.shade500),
                    ),),
                  subtitle: Text("Your salary deposited. Thank you",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 13,color: Colors.black87),
                    ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
