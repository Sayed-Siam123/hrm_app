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
        padding: EdgeInsets.fromLTRB(0,0,0,50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.error_outline,color: Theme.of(context).buttonColor,),
              onPressed: (){
                print("Pressed");
              },
            ),
            SizedBox(height: 0,),
            Container(
              width: 360,
              color: Colors.white,
              margin: EdgeInsets.only(),
              child: TabBar(
                indicatorWeight: 4,
                labelStyle: GoogleFonts.poppins(
                    color: Colors.black, fontWeight: FontWeight.w600),
                unselectedLabelColor: Colors.black45,
                labelColor: Theme.of(context).buttonColor,
                labelPadding: EdgeInsets.all(0),
                tabs: [
                  new Tab(
                    text: "Notifications",
                  ),
                  new Tab(
                      text: "Events"
                  ),
                  new Tab(
                      text: "Meeting"
                  ),
                  new Tab(
                      text: "View All"
                  ),
                ],
                controller: _tabController,
                indicatorColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.label,
              ),
            ),

            Container(
              height: 100,
              width: 100,
              child: TabBarView(
                controller: _tabController,
                children: [
                  new NotificationTab(),
                  new EventsTab(),
                  new MeetingTab(),
                  new ViewAllTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
