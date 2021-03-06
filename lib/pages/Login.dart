import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_gifimage/flutter_gifimage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrm_app/Bloc/user_bloc.dart';
import 'package:hrm_app/helper/MainPage.dart';
import 'package:hrm_app/models/Userlogin_Model.dart';
import 'package:hrm_app/pages/Home.dart';
import 'package:hrm_app/helper/DrawerWidget.dart';
import 'package:hrm_app/resources/SharedPrefer.dart';
import 'package:responsive_grid/responsive_grid.dart';

// ignore: must_be_immutable
class LoginPage extends StatefulWidget {

  bool status;

  LoginPage({this.status});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {

  SessionManager prefs = SessionManager();

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final email = new TextEditingController();
  final password = new TextEditingController();
  UserLogin_model user;
  GifController controller;
  bool loginPress=false;

  UserLogin_model fetchedData;

  String loginKey = "loginKey";
  String useridKey = "userid";
  String loginName = "loginName";
  String userDesignation = "userDesignation";
  String PresentStatus = "PresentStatus";
  String LateStatus = "LateStatus";
  String Intimes = "Intimes";
  String MonthPresent = "MonthPresent";
  String MonthAbesnt = "MonthAbesnt";
  String MonthLeave = "MonthLeave";
  String MonthLate = "MonthLate";



  bool _validate1;
  bool _validate2;

  String errortext1 = "*user id can\'t be empty";
  String errortext2 = "*password can\'t be empty";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.status.toString());
    email.text = null;
    password.text = null;
    setState(() {
      loginPress = false;
    });
    print(loginPress.toString());
    fetchedData = null;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    userbloc.dispose();
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
              floating: true,
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
                          child: loginPress == false? Column(
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
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    controller: email,
                                    onTap: (){
                                      setState(() {
                                        loginPress = false;
                                      });
                                      print(loginPress.toString());
                                    },
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
                                      errorText: _validate1 == false ? errortext1 : null,
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
                                    onTap: (){
                                      setState(() {
                                        loginPress = false;
                                      });
                                      print(loginPress.toString());
                                    },
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    controller: password,
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
                                      errorText: _validate2 == false ? errortext2 : null,
                                    ),
                                  )),

                              Container(
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
                                    child: FlatButton(
                                      onPressed: (){
                                        if (email.text.isEmpty &&
                                            email.text == "") {
                                          print("KHali");

                                          setState(() {
                                            _validate2 = true;
                                            _validate1 = false;
                                          });

                                          //TODO:: Toast hobe ekta
                                        } else if (password.text.isEmpty &&
                                            password.text == "") {
                                          print("eitao KHali");

                                          setState(() {
                                            _validate1 = true;
                                            _validate2 = false;
                                          });

                                          //TODO:: Toast hobe ekta
                                        } else {
                                          setState(() {
                                            _validate1 = true;
                                            _validate2 = true;
                                          });
                                        }
                                        print("Vora");


                                        if (_validate1 && _validate2) {
                                          print(email.text);
                                          print(password.text);
                                          //userbloc.getuser_id(email.text);
                                          //userbloc.getUser_pass(password.text);
                                          user = UserLogin_model(
                                            UserId: email.text,
                                            Password: password.text,
                                          );

                                          setState(() {
                                            loginPress = true;
                                          });

                                          userbloc.userlogin(user);
                                          print(loginPress);
                                          //userbloc.dispose();


                                          print("Full Valid");
                                          email.text = "";
                                          password.text = "";

                                          Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          MainPage(
                                                            currentIndex: 0,
                                                          )),
                                                );
                                              }

                                      },
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
                          ):

                          //Text("Login Pressed"),

                          loginPress == true ? Builder(
                            builder: (context) {
                              return Center(
                                child: Container(
                                  height: MediaQuery.of(context).size.height*.2,
                                  width: 300,
                                  child: StreamBuilder<UserLogin_model>(
                                    stream: userbloc.LoginSuccessData,
                                    builder:
                                        (context, AsyncSnapshot<UserLogin_model> snapshot) {
                                      if (snapshot.hasData) {
                                        fetchedData = snapshot.data;
                                        //_newData = fetcheddata;
                                        print("Login:: " + snapshot.data.Name.toString());
                                        if (snapshot.data.LogStatus.toString() == "true") {
                                          print("Login:: " + snapshot.data.LogStatus.toString());

                                          //
                                          // if(loginPress){
                                          //   print("Here login press is: "+loginPress.toString());
                                          //   SchedulerBinding.instance.addPostFrameCallback((_) {
                                          //     Timer(Duration(seconds: 2), () {
                                          //       Navigator.push(
                                          //         context,
                                          //         MaterialPageRoute(builder: (context) => MainPage(currentIndex: 0,)),
                                          //       );
                                          //     });    //TODO:: DELAY EXAMPLE
                                          //     print("Login True");
                                          //   });
                                          // }

                                          // WidgetsBinding.instance.addPostFrameCallback((_){  // this will call for setState()
                                          //   Timer(Duration(seconds: 2), () {
                                          //     Navigator.push(
                                          //       context,
                                          //       MaterialPageRoute(builder: (context) => MainPage(currentIndex: 0,)),
                                          //     );
                                          //   });    //TODO:: DELAY EXAMPLE
                                          //   print("Login True");
                                          //
                                          // });
                                          userbloc.dispose();

                                        } else if (snapshot.data.LogStatus.toString() == "false") {
                                          print("if false Login:: " + snapshot.data.LogStatus.toString());

                                          WidgetsBinding.instance.addPostFrameCallback((_){
                                            prefs.setData(loginKey, "false");
                                            setState(() {
                                              loginPress = false;
                                            });
                                            print("Login False");
                                            Scaffold.of(context).showSnackBar(SnackBar(
                                              content: Text(
                                                'Incorrect UserID or Password!',
                                                style: GoogleFonts.exo2(
                                                  textStyle: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              duration: Duration(seconds: 4),
                                            ));

                                          });
                                          userbloc.dispose();

                                        }
                                      } else if (snapshot.hasError) {
                                        return Text("${snapshot.error}");
                                      }

                                      return Center(child: Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: <Widget>[
                                          CircularProgressIndicator(),
                                          Text("Logging in...")
                                        ],
                                      ));
                                    },
                                  ),
                                ),
                              );
                            },
                          ) : Center(child: Text("OK!"),),
                        ),
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
