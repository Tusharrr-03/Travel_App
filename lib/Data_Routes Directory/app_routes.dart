import 'package:flutter/cupertino.dart';
import 'package:travel_app_ui/Login%20Pages/create_new_pass.dart';
import 'package:travel_app_ui/Login%20Pages/forget_page.dart';
import 'package:travel_app_ui/Ui/Home%20Page%20Ui/Popular%20Places%20Page/popular_place_desc.dart';
import 'package:travel_app_ui/Ui/Home%20Page%20Ui/Popular%20Places%20Page/popular_places.dart';
import 'package:travel_app_ui/Ui/Home%20Page%20Ui/Home%20Page%20Display/detail_desc_page.dart';
import 'package:travel_app_ui/Ui/Home%20Page%20Ui/Home%20Page%20Display/home_page.dart';
import 'package:travel_app_ui/Intro_Directory/intro_page.dart';
import 'package:travel_app_ui/Login%20Pages/login_page.dart';
import 'package:travel_app_ui/Login%20Pages/otpverify_page.dart';
import 'package:travel_app_ui/Intro_Directory/second_page.dart';
import 'package:travel_app_ui/Login%20Pages/signup_page.dart';
import 'package:travel_app_ui/Ui/Home%20Page%20Ui/Notification%20Panel/notification_page.dart';
import 'package:travel_app_ui/Ui/Profile%20Ui/profile_page.dart';
import 'package:travel_app_ui/Ui/Profile%20Ui/profile_page_edit.dart';
import 'package:travel_app_ui/splash_screen.dart';

import '../Intro_Directory/first_page.dart';
import '../Ui/Intro Page Ui/first_page.dart';
import '../Ui/Intro Page Ui/intro_page.dart';
import '../Ui/Intro Page Ui/second_page.dart';
import '../Ui/Login Page Ui/forget_page.dart';
import '../Ui/Login Page Ui/login_page.dart';
import '../Ui/Login Page Ui/otpverify_page.dart';
import '../Ui/Login Page Ui/signup_page.dart';

class AppRoutes{

  static const String ROUTESPLASHSCREEN = '/';
  static const String ROUTEINTROSCREEN = '/intro';
  static const String ROUTEFIRSTSCREEN = '/first';
  static const String ROUTESECONDSCREEN = '/second';
  static const String ROUTELOGINSCREEN = '/login';
  static const String ROUTESIGNUPSCREEN = '/sign up';
  static const String ROUTEFORGETSCREEN = '/forget pass';
  static const String ROUTEOTPVERIFYSCREEN = '/otp verification';
  static const String ROUTECREATENEWPASSSCREEN = '/create new password';
  static const String ROUTEHOMESCREEN = '/home page';
  static const String ROUTEPOPULARPLACESSCREEN = '/popular places page';
  static const String ROUTEPROFILESCREEN = '/profile page';
  static const String ROUTEPROFILEEDITSCREEN = '/profile page edit';
  static const String ROUTENOTIFICATIONSCREEN = '/notification column';
  //static const String ROUTEDETAILSCREEN = '/detail page';
  //static const String ROUTEPOPULARPLACEDESCREEN = '/popular places description';



  static Map<String , WidgetBuilder> getroutes() => {
    ROUTESPLASHSCREEN : (contex) => SplashScreen(),
    ROUTEINTROSCREEN : (contex) => IntroPage(),
    ROUTEFIRSTSCREEN : (contex) => FirstPage(),
    ROUTESECONDSCREEN : (contex) => SecondPage(),
    ROUTELOGINSCREEN : (contex) => LoginPage(),
    ROUTESIGNUPSCREEN : (contex) => SignUpPage(),
    ROUTEFORGETSCREEN : (contex) => ForgetPage(),
    ROUTEOTPVERIFYSCREEN : (contex) => OtpVerificationPage(),
    ROUTECREATENEWPASSSCREEN : (contex) => CreateNewPassPage(),
    ROUTEHOMESCREEN : (contex) => HomePage(),
    ROUTEPOPULARPLACESSCREEN : (contex) => PopularPlacesPage(),
    //ROUTEPOPULARPLACEDESCREEN : (contex) => PopularPlaceDesc(selectedIndex: index),
    ROUTEPROFILESCREEN : (contex) => ProfilePage(),
    ROUTEPROFILEEDITSCREEN : (contex) => ProfilePageEdit(),
    ROUTENOTIFICATIONSCREEN : (context) => NotificationPage(),
    //ROUTEDETAILSCREEN : (context) => DetailDescPage(),
  };
}