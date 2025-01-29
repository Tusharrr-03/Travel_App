import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_ui/Data_Routes%20Directory/app_routes.dart';
import 'package:travel_app_ui/Ui/Home%20Page%20Ui/detail_desc_page.dart';
import 'package:travel_app_ui/Login%20Pages/forget_page.dart';
import 'package:travel_app_ui/Ui/Home%20Page%20Ui/home_page.dart';
import 'package:travel_app_ui/Login%20Pages/login_page.dart';
import 'package:travel_app_ui/Login%20Pages/signup_page.dart';

void main(){
  runApp(TravelApp());
}
class TravelApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Geometr',
      ),
      //home: HomePage(),
      initialRoute: AppRoutes.ROUTESPLASHSCREEN,
      routes: AppRoutes.getroutes(),
    );
  }
}