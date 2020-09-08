import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gifimage/flutter_gifimage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrm_app/helper/MainPage.dart';
import 'package:hrm_app/pages/Home.dart';
import 'package:hrm_app/helper/DrawerWidget.dart';
import 'package:responsive_grid/responsive_grid.dart';

class LoginPage extends StatefulWidget {

  final bool status;

  LoginPage({this.status});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  GifController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = GifController(value: 26,vsync: this,duration: Duration(milliseconds: 200),reverseDuration: Duration(milliseconds: 200));
    print(widget.status.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        color: Theme.of(context).accentColor,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Theme.of(context).accentColor,
              elevation: 0,
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 310, 0, 0),
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height * .6,
                    width: MediaQuery.of(context).size.width,
                    child: ResponsiveGridRow(
                      children: [
                        ResponsiveGridCol(
                          lg: 12,
                          child: Column(
                            children: <Widget>[
                              Container(
                                  height: 55,
                                  width:
                                  MediaQuery.of(context).size.width,
                                  margin:
                                  EdgeInsets.fromLTRB(15, 45, 15, 0),
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
                                    controller: email,
                                    enabled: true,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      hintText: "Enter User ID",
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
                                    controller: password,
                                    enabled: true,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      hintText: "Enter Password",
                                      hintStyle: GoogleFonts.poppins(
                                        textStyle:
                                        TextStyle(fontSize: 16),
                                      ),
                                    ),
                                  )),

                              InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => MainPage()),
                                  );
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
                                    child: Text("LOGIN",
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
                    )
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    color: Theme.of(context).accentColor,
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    child: ResponsiveGridRow(
                      children: [
                        ResponsiveGridCol(
                          lg: 12,
                          child: Column(
                            children: <Widget>[
                              Row(children: <Widget>[
                                widget.status==true ? Expanded(
                                    child: Image.asset(
                                  "assets/images/at-the-office.gif",
                                  height: 300,
                                  width: 300,
                                )): Expanded(
                                    child: Image.asset(
                                      "assets/images/at-the-office.png",
                                      height: 250,
                                      width: 250,
                                    ))
                                // GifImage(
                                //   controller: controller,
                                //   image: AssetImage("assets/images/at-the-office.gif"),
                                // ),
                              ],
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ]))
          ],
        ),
      ),
    );
  }
}
