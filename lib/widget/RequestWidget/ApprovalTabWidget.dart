import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrm_app/widget/ApprovalTabWidget/LeaveTab.dart';
import 'package:hrm_app/widget/ApprovalTabWidget/ServiceTab.dart';
import 'package:hrm_app/widget/ApprovalTabWidget/StoreTab.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'MeetingsTabWidget.dart';
import 'RequestTabWidget.dart';


class ApprovalTabWidget extends StatefulWidget {
  @override
  _ApprovalTabWidgetState createState() => _ApprovalTabWidgetState();
}

class _ApprovalTabWidgetState extends State<ApprovalTabWidget>  with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate([
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 70, 0, 0),
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height*.8,
                  width: MediaQuery.of(context).size.width,
                  child: ResponsiveGridRow(
                    children: [
                      ResponsiveGridCol(
                        lg: 12,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: MediaQuery.of(context).size.height*.7,
                              width: MediaQuery.of(context).size.width,
                              child: TabBarView(
                                controller: _tabController,
                                children: [
                                  new LeaveTab(),
                                  new StoreTab(),
                                  new ServiceTab(),
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
                  color: Theme.of(context).accentColor,
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: ResponsiveGridRow(
                    children: [
                      ResponsiveGridCol(
                        lg: 12,
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                                  width: 200,
                                  child: TabBar(
                                    indicatorWeight: 3,
                                    labelStyle: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                    unselectedLabelColor: Colors.grey.shade400,
                                    labelColor: Colors.black87,
                                    labelPadding: EdgeInsets.all(0),
                                    tabs: [
                                      new Tab(
                                        text: "Leave",
                                      ),
                                      new Tab(text: "Store"),
                                      new Tab(text: "Service"),
                                    ],
                                    controller: _tabController,
                                    indicatorColor: Colors.transparent,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 30, 0),
                                  width: 70,
                                  child: Text("View All",style: GoogleFonts.poppins(
                                        color: Theme.of(context).buttonColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                ),
                              ],
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
    )
    ;
  }
}
