
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_app_ui/Data_Routes%20Directory/app_routes.dart';
import 'package:travel_app_ui/Ui/Home%20Page%20Ui/Home%20Page%20Display/home_page.dart';
import 'package:travel_app_ui/Ui/Intro%20Page%20Ui/intro_page.dart';
import 'package:travel_app_ui/Ui/Login%20Page%20Ui/login_page.dart';
import 'package:travel_app_ui/Ui/Profile%20Ui/profile_page.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>{
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () async{

      var prefs = await SharedPreferences.getInstance();
      bool? check = prefs.getBool(LoginPage.LOGIN_KEY);

      Widget homePage = LoginPage();
      if(check != null){
        if(check){
          homePage = HomePage();
        }
      }


      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => homePage));

      /*var prefs1 = await SharedPreferences.getInstance();
      bool? check1 =  prefs1.getBool(ProfilePage.LOGOUT_KEY);

      Widget nextPage = IntroPage();
      if(check1 != null){
        if(check1){
          nextPage = IntroPage();
        }
      }
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => nextPage));*/
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body:Center(
        child: Text("Traveller" , style: TextStyle(fontSize: 30 , color: Colors.white),),
      ),
    );
  }
}