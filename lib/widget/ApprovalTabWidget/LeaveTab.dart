import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LeaveTab extends StatefulWidget {
  @override
  _LeaveTabState createState() => _LeaveTabState();
}

class _LeaveTabState extends State<LeaveTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top:0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Text(
                "Recent",
                style:
                GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: verticalList1(),
              ),
            ),
          ],
        ));
  }

  Widget horizontalList1() {
    return Container(
        margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
        child: new ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.only(top: 0, left: 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                      color: Colors.grey.shade300),
                ],
              ),
              width: 150.0,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Leave",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Request",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.only(top: 0, left: 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                      color: Colors.grey.shade300),
                ],
              ),
              child: Container(
                width: 150.0,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Renew",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Visa",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.only(top: 0, left: 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                      color: Colors.grey.shade300),
                ],
              ),
              child: Container(
                width: 150.0,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Renew",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Insurance",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  Widget verticalList1() {
    return Container(
        child: new ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.only(top: 10, left: 0, right: 0, bottom: 0),
          children: <Widget>[
            Container(
              height: 150,
              margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
              padding: EdgeInsets.only(top: 0, left: 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(9)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                      color: Colors.grey.shade300),
                ],
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Align(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).buttonColor,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(9),
                                bottomRight: Radius.circular(9),
                              ),
                            ),
                            margin: EdgeInsets.fromLTRB(18, 0, 0, 0),
                            height: 50,
                            width: 150,
                            child: Center(
                              child: Text(
                                "Medical Leave",
                                style: GoogleFonts.poppins(
                                  textStyle:
                                  TextStyle(color: Colors.white, fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                          alignment: Alignment.topLeft,
                        ),
                        Align(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(18, 50, 0, 0),
                            height: 80,
                            width: 230,
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.only(left: 15.0, top: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Leave Request",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Theme.of(context).buttonColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    "Health Condition not ok",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    "From 21-09-20 to 23-09-20",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        Align(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(18, 5, 18, 0),
                            height: 90,
                            width: 140,
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "#21242",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "22-09-2020",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            color: Colors.black54, fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          alignment: Alignment.topRight,
                        ),

                        Align(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
                            height: 40,
                            width: 220,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: 30,
                                  width: 70,
                                  margin: EdgeInsets.only(right: 3),
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).backgroundColor,
                                    borderRadius: BorderRadius.all(Radius.circular(0)),
                                  ),
                                  child: Center(
                                    child: Text("ACCEPT",style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        color: Theme.of(context).accentColor,
                                        fontWeight: FontWeight.w500
                                    ),),
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  width: 70,
                                  margin: EdgeInsets.only(right: 3),
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).buttonColor,
                                      borderRadius: BorderRadius.all(Radius.circular(0)),
                                  ),
                                  child: Center(
                                    child: Text("REJECT",style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        color: Theme.of(context).accentColor,
                                        fontWeight: FontWeight.w500
                                    ),),
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  width: 70,
                                  margin: EdgeInsets.only(right: 3),
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).backgroundColor,
                                      borderRadius: BorderRadius.all(Radius.circular(0)),
                                  ),
                                  child: Center(
                                    child: Text("FORWARD",style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        color: Theme.of(context).accentColor,
                                      fontWeight: FontWeight.w500
                                    ),),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          alignment: Alignment.bottomRight,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
          ],
        ));
  }
}
