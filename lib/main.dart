import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_ui/Data_Routes%20Directory/app_routes.dart';
import 'package:travel_app_ui/Login%20Pages/create_new_pass.dart';
import 'package:travel_app_ui/Ui/Home%20Page%20Ui/Popular%20Places%20Page/popular_places.dart';
import 'package:travel_app_ui/Ui/Home%20Page%20Ui/Home%20Page%20Display/detail_desc_page.dart';
import 'package:travel_app_ui/Login%20Pages/forget_page.dart';
import 'package:travel_app_ui/Ui/Home%20Page%20Ui/Home%20Page%20Display/home_page.dart';
import 'package:travel_app_ui/Login%20Pages/login_page.dart';
import 'package:travel_app_ui/Login%20Pages/signup_page.dart';
import 'package:travel_app_ui/Ui/Home%20Page%20Ui/Notification%20Panel/notification_page.dart';
import 'package:iconsax/iconsax.dart';
import 'package:travel_app_ui/Ui/Profile%20Ui/profileImage_set.dart';
import 'package:travel_app_ui/Ui/Profile%20Ui/profile_page.dart';


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
      //home: ProfileimageSet(),
      initialRoute: AppRoutes.ROUTESPLASHSCREEN,
      routes: AppRoutes.getroutes(),
    );
  }
}