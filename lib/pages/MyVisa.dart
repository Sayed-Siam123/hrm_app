import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrm_app/ColorLibrary/HexColor.dart';
import 'package:hrm_app/pages/MyInsurance.dart';
import 'package:hrm_app/widget/HomeWidget/DrawerWidget.dart';
import 'package:intl/intl.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'Home.dart';
import 'MyLoan.dart';

class MyVisaPage extends StatefulWidget {
  @override
  _MyVisaPageState createState() => _MyVisaPageState();
}

class _MyVisaPageState extends State<MyVisaPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  Color back_profile = HexColor("#F2F2F2");
  String dropdownValue;

  DateTime expire_date = DateTime.now();
  DateTime renew_date = DateTime.now();
  DateFormat formatter = DateFormat('dd-MM-yyyy');
  String formatted;
  TextEditingController expireDate = new TextEditingController();
  TextEditingController renewDate = new TextEditingController();
  TextEditingController renewCity = new TextEditingController();


  _selectRenewDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: renew_date, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != renew_date)
      setState(() {
        renew_date = picked;
      });
    formatted = formatter.format(renew_date);
    print(formatted);
    renewDate.text = formatted;
  }


  _selectExpireDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: expire_date, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != expire_date)
      setState(() {
        expire_date = picked;
      });
    formatted = formatter.format(expire_date);
    print(formatted);
    expireDate.text = formatted;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerWidget(),
      body: Container(
        color: Theme.of(context).accentColor,
        child: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            title: Text(
              "My Visa",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Theme.of(context).buttonColor,
                      fontWeight: FontWeight.w500)),
            ),
            centerTitle: true,
            backgroundColor: Theme.of(context).accentColor,
            elevation: 0,
            leading: new IconButton(
              icon: new Icon(
                Icons.menu,
                color: Theme.of(context).buttonColor,
              ),
              onPressed: () => _scaffoldKey.currentState.openDrawer(),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 60, 0, 0),
                  color: back_profile,
                  height: MediaQuery.of(context).size.height * 0.9,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: ResponsiveGridRow(
                      children:[
                        ResponsiveGridCol(
                          lg: 12,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[

                              Container(
                                  height: 55,
                                  width:
                                  MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.fromLTRB(15, 40, 15, 0),
                                  padding: EdgeInsets.fromLTRB(15, 4, 15, 0),
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
                                    controller: renewCity,
                                    enabled: true,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      hintText: "Renew issue city",
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
                                    controller: renewDate,
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
                                          _selectRenewDate(context);
                                          print("apply");
                                        },
                                      ),
                                      hintText: "Renew issue date",
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
                                    controller: expireDate,
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
                                          _selectExpireDate(context);
                                          print("apply");
                                        },
                                      ),
                                      hintText: "Date of Expire",
                                      hintStyle: GoogleFonts.poppins(
                                        textStyle:
                                        TextStyle(fontSize: 16),
                                      ),
                                    ),
                                  )),

                              InkWell(
                                onTap: (){
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (context) => HomePage()),
                                  // );
                                },
                                child: Container(
                                  height: 55,
                                  width:
                                  MediaQuery.of(context).size.width,
                                  margin:
                                  EdgeInsets.fromLTRB(15, 100, 15, 0),
                                  padding:
                                  EdgeInsets.fromLTRB(15, 3, 5, 0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
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
                                    child: Text("UPLOAD DOCUMENTS",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),

                                ),
                              ),


                              InkWell(
                                onTap: (){
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (context) => HomePage()),
                                  // );
                                },
                                child: Container(
                                  height: 55,
                                  width:
                                  MediaQuery.of(context).size.width,
                                  margin:
                                  EdgeInsets.fromLTRB(15, 20, 15, 0),
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
                                    child: Text("SAVE",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
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
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  height: MediaQuery.of(context).size.width * 0.13,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          GestureDetector(
                            child: Padding(
                              padding: EdgeInsets.only(top:3.0,right: 3),
                              child: Text("My Loan",style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400
                                  )
                              ),),
                            ),
                            onTap: (){
                              print("Tapped1");
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MyLoanPage()),
                              );
                            },
                          ),

                          Center(
                            child: Container(
                              height: 40,
                              width: 40,
                              color: Colors.transparent,
                              child: IconButton(
                                onPressed: (){
                                  print("Tapped2");
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => MyLoanPage()),
                                  );
                                },
                                icon: Icon(Icons.arrow_forward),
                                color: Theme.of(context).buttonColor,
                              ),

                            ),
                          ),
                        ],
                      )
                  ),
                ),
              ],
            ),
          ])),
        ]),
      ),
    );
  }
}