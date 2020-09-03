import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrm_app/ColorLibrary/HexColor.dart';
import 'package:hrm_app/widget/HomeWidget/DrawerWidget.dart';
import 'package:intl/intl.dart';
import 'package:responsive_grid/responsive_grid.dart';

class LeaveRequestPage extends StatefulWidget {
  @override
  _LeaveRequestPageState createState() => _LeaveRequestPageState();
}

class _LeaveRequestPageState extends State<LeaveRequestPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  Color back_profile = HexColor("#F2F2F2");
  DateTime selectedFromDate = DateTime.now();
  DateTime selectedToDate = DateTime.now();
  DateFormat formatter = DateFormat('dd-MM-yyyy');
  String formatted;

  TextEditingController fromDate = new TextEditingController();
  TextEditingController toDate = new TextEditingController();
  TextEditingController leaveCause = new TextEditingController();
  TextEditingController phoneNumber = new TextEditingController();

  String dropdownValue;

  _selectFromDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedFromDate, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedFromDate)
      setState(() {
        selectedFromDate = picked;
      });
    formatted = formatter.format(selectedFromDate);
    print(formatted);
    fromDate.text = formatted;
  }

  _selectToDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedToDate, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedToDate)
      setState(() {
        selectedToDate = picked;
      });
    formatted = formatter.format(selectedToDate);
    print(formatted);
    toDate.text = formatted;
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
                      margin: EdgeInsets.fromLTRB(0, 250, 0, 0),
                      color: back_profile,
                      height: MediaQuery.of(context).size.height * 0.73,
                      width: MediaQuery.of(context).size.width,
                      child: ResponsiveGridRow(
                        children: [
                          ResponsiveGridCol(
                            lg: 12,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(40, 30, 0, 0),
                      color: Theme.of(context).backgroundColor,
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: ResponsiveGridRow(
                        children: [
                          ResponsiveGridCol(
                            xs: 3,
                            md: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "LEAVE TYPE",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),

                                //eikhan theke streamer run korbe

                                Text(
                                  "Casual",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),

                                Text(
                                  "Medical",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ResponsiveGridCol(
                            xs: 3,
                            md: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "ASSIGNED",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),

                                //eikhan theke streamer run korbe

                                Text(
                                  "9",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),

                                Text(
                                  "7",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ResponsiveGridCol(
                            xs: 3,
                            md: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "ENJOYED",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),

                                //eikhan theke streamer run korbe

                                Text(
                                  "4",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),

                                Text(
                                  "5",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ResponsiveGridCol(
                            xs: 3,
                            md: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "REMAINS",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),

                                //eikhan theke streamer run korbe

                                Text(
                                  "3",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),

                                Text(
                                  "10",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 210, 30, 0),
                      height: MediaQuery.of(context).size.height * .67,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(9)),
                        color: Theme.of(context).accentColor,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5.0,
                              spreadRadius: 5.0,
                              offset: Offset(1, 1),
                              color: Colors.grey.shade600.withOpacity(0.1)),
                        ],
                      ),
                      child: ResponsiveGridRow(
                        children: [
                          ResponsiveGridCol(
                            lg: 12,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: 55,
                                  margin: EdgeInsets.fromLTRB(15, 40, 15, 0),
                                  padding: EdgeInsets.fromLTRB(10, 4, 5, 0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 5.0,
                                          spreadRadius: 5.0,
                                          offset: Offset(1, 1),
                                          color: Colors.grey.shade600
                                              .withOpacity(0.1)),
                                    ],
                                  ),
                                  child: DropdownButton<String>(
                                      hint: Text(
                                        "Select Leave Type",
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(fontSize: 16),
                                        ),
                                      ),
                                      isExpanded: true,
                                      value: dropdownValue,
                                      icon: Icon(Icons.unfold_more),
                                      iconSize: 25,
                                      underline: SizedBox(),
                                      onChanged: (String newValue) {
                                        setState(() {
                                          dropdownValue = newValue;
                                        });
                                        print(dropdownValue);
                                      },
                                      items: <String>[
                                        'Casual',
                                        'Medical',
                                        'Urgent',
                                      ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(
                                            value,
                                            style: GoogleFonts.poppins(
                                              textStyle:
                                                  TextStyle(fontSize: 16),
                                            ),
                                          ),
                                        );
                                      }).toList()),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Container(
                                        height: 55,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .38,
                                        margin:
                                            EdgeInsets.fromLTRB(11, 15, 0, 0),
                                        padding:
                                            EdgeInsets.fromLTRB(15, 3, 5, 0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 5.0,
                                                spreadRadius: 5.0,
                                                offset: Offset(1, 1),
                                                color: Colors.grey.shade600
                                                    .withOpacity(0.1)),
                                          ],
                                        ),
                                        child: TextField(
                                          controller: fromDate,
                                          enabled: true,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            disabledBorder: InputBorder.none,
                                            suffixIcon: IconButton(
                                              icon: Icon(
                                                Icons.calendar_today,
                                                color: Theme.of(context)
                                                    .buttonColor
                                                    .withOpacity(0.4),
                                              ),
                                              onPressed: () {
                                                _selectFromDate(context);
                                                print("From");
                                              },
                                            ),
                                            hintText: "From",
                                            hintStyle: GoogleFonts.poppins(
                                              textStyle:
                                                  TextStyle(fontSize: 16),
                                            ),
                                          ),
                                        )),
                                    Container(
                                        height: 55,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .38,
                                        margin:
                                            EdgeInsets.fromLTRB(0, 15, 11, 0),
                                        padding:
                                            EdgeInsets.fromLTRB(15, 3, 5, 0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 5.0,
                                                spreadRadius: 5.0,
                                                offset: Offset(1, 1),
                                                color: Colors.grey.shade600
                                                    .withOpacity(0.1)),
                                          ],
                                        ),
                                        child: TextField(
                                          controller: toDate,
                                          enabled: true,
                                          readOnly: true,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            disabledBorder: InputBorder.none,
                                            suffixIcon: IconButton(
                                              icon: Icon(
                                                Icons.calendar_today,
                                                color: Theme.of(context)
                                                    .buttonColor
                                                    .withOpacity(0.4),
                                              ),
                                              onPressed: () {
                                                _selectToDate(context);
                                                print("To");
                                              },
                                            ),
                                            hintText: "To",
                                            hintStyle: GoogleFonts.poppins(
                                              textStyle:
                                                  TextStyle(fontSize: 16),
                                            ),
                                          ),
                                        )),
                                  ],
                                ),

                                Container(
                                    height: 55,
                                    width:
                                    MediaQuery.of(context).size.width,
                                    margin:
                                    EdgeInsets.fromLTRB(15, 15, 15, 0),
                                    padding:
                                    EdgeInsets.fromLTRB(15, 3, 5, 0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                      BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 5.0,
                                            spreadRadius: 5.0,
                                            offset: Offset(1, 1),
                                            color: Colors.grey.shade600
                                                .withOpacity(0.1)),
                                      ],
                                    ),
                                    child: TextField(
                                      controller: leaveCause,
                                      enabled: true,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        hintText: "Leave reason",
                                        hintStyle: GoogleFonts.poppins(
                                          textStyle:
                                          TextStyle(fontSize: 16),
                                        ),
                                      ),
                                    )),

                                Container(
                                    height: 55,
                                    width:
                                    MediaQuery.of(context).size.width,
                                    margin:
                                    EdgeInsets.fromLTRB(15, 15, 15, 0),
                                    padding:
                                    EdgeInsets.fromLTRB(15, 3, 5, 0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                      BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 5.0,
                                            spreadRadius: 5.0,
                                            offset: Offset(1, 1),
                                            color: Colors.grey.shade600
                                                .withOpacity(0.1)),
                                      ],
                                    ),
                                    child: TextField(
                                      controller: phoneNumber,
                                      enabled: true,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        hintText: "Phone Number",
                                        hintStyle: GoogleFonts.poppins(
                                          textStyle:
                                          TextStyle(fontSize: 16),
                                        ),
                                      ),
                                    )),

                                Container(
                                    height: 55,
                                    width:
                                    MediaQuery.of(context).size.width,
                                    margin:
                                    EdgeInsets.fromLTRB(15, 70, 15, 0),
                                    padding:
                                    EdgeInsets.fromLTRB(15, 3, 5, 0),
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).buttonColor,
                                      borderRadius:
                                      BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 5.0,
                                            spreadRadius: 5.0,
                                            offset: Offset(1, 1),
                                            color: Colors.grey.shade600
                                                .withOpacity(0.1)),
                                      ],
                                    ),
                                    child: Center(

                                      child: Text("APPLY",
                                             style: GoogleFonts.poppins(
                                               textStyle: TextStyle(
                                                 fontSize: 20,
                                                 fontWeight: FontWeight.w500,
                                               ),
                                             ),
                                      ),
                                    ),

                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
