import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:hrm_app/pages/Home.dart';
import 'package:splashscreen/splashscreen.dart';

import 'ColorLibrary/HexColor.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // AppLanguage appLanguage = AppLanguage();
  // await appLanguage.fetchLocale();
  await GlobalConfiguration().loadFromAsset("config");
  print("base_url: ${GlobalConfiguration().getString('base_url')}"); // need to use for api call

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
    statusBarColor: Colors.transparent,
  ));  //to make top statusbar color transperent in app

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  Color first_layer = HexColor("#014660");
  Color second_layer = HexColor("#FFFFFF");
  Color button_red = HexColor("#E8505B");
  Color word_hint = HexColor("#828282");
  Color nav_bar = HexColor("#EB5757");

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: first_layer,
        buttonColor: button_red,
        accentColor: second_layer,
        focusColor: nav_bar,
        hintColor: word_hint,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      backgroundColor: Colors.white,
      seconds: 3,
      title: Text("HRM app"),
      navigateAfterSeconds: HomePage(),
      //title: new Text('IDENTIT',textScaleFactor: 2,),
      loadingText: Text("Loading"),
      photoSize: 150.0,
      loaderColor: Colors.black54,
    );
  }
}