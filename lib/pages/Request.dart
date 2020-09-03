import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrm_app/widget/HomeWidget/DrawerWidget.dart';
import 'package:hrm_app/widget/HomeWidget/EventsTab.dart';
import 'package:hrm_app/widget/HomeWidget/MeetingTab.dart';
import 'package:hrm_app/widget/HomeWidget/NotificationTab.dart';
import 'package:hrm_app/widget/HomeWidget/ViewAllTab.dart';
import 'package:hrm_app/widget/RequestWidget/ApprovalTabWidget.dart';
import 'package:hrm_app/widget/RequestWidget/MeetingsTabWidget.dart';
import 'package:hrm_app/widget/RequestWidget/RequestTabWidget.dart';
import 'package:responsive_grid/responsive_grid.dart';

class RequestPage extends StatefulWidget {
  @override
  _RequestPageState createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 3, vsync: this);
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
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 95, 0, 0),
                      color: Colors.white,
                      height:MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: ResponsiveGridRow(
                        children: [
                          ResponsiveGridCol(
                            lg: 12,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width,
                                  child: TabBarView(
                                    controller: _tabController,
                                    children: [
                                      new RequestTabWidget(),
                                      new ApprovalTabWidget(),
                                      new MeetingsTabWidget(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),


                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      color: Theme.of(context).backgroundColor,
                      height: 90,
                      width: MediaQuery.of(context).size.width,
                      child: ResponsiveGridRow(
                        children: [
                          ResponsiveGridCol(
                            lg: 12,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                  width: 380,
                                  color: Colors.transparent,
                                  child: TabBar(
                                    indicatorWeight: 3,
                                    labelStyle: GoogleFonts.poppins(
                                        color: Colors.black, fontWeight: FontWeight.w600,fontSize: 20),
                                    unselectedLabelColor: Colors.grey.shade400,
                                    labelColor: Theme.of(context).accentColor,
                                    labelPadding: EdgeInsets.all(0),
                                    tabs: [
                                      new Tab(
                                        text: "Requests",
                                      ),
                                      new Tab(
                                          text: "Approvals"
                                      ),
                                      new Tab(
                                          text: "Meetings"
                                      ),
                                    ],
                                    controller: _tabController,
                                    indicatorColor: Theme.of(context).buttonColor,
                                    indicatorSize: TabBarIndicatorSize.label,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}