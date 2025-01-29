import 'package:flutter/cupertino.dart';
import 'package:travel_app_ui/Login%20Pages/forget_page.dart';
import 'package:travel_app_ui/Ui/Home%20Page%20Ui/detail_desc_page.dart';
import 'package:travel_app_ui/Ui/Home%20Page%20Ui/home_page.dart';
import 'package:travel_app_ui/Intro_Directory/intro_page.dart';
import 'package:travel_app_ui/Login%20Pages/login_page.dart';
import 'package:travel_app_ui/Login%20Pages/otpverify_page.dart';
import 'package:travel_app_ui/Intro_Directory/second_page.dart';
import 'package:travel_app_ui/Login%20Pages/signup_page.dart';
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
  static const String ROUTEHOMESCREEN = '/home page';
  static const String ROUTEDETAILSCREEN = '/detail page';

  static Map<String , WidgetBuilder> getroutes() => {
    ROUTESPLASHSCREEN : (contex) => SplashScreen(),
    ROUTEINTROSCREEN : (contex) => IntroPage(),
    ROUTEFIRSTSCREEN : (contex) => FirstPage(),
    ROUTESECONDSCREEN : (contex) => SecondPage(),
    ROUTELOGINSCREEN : (contex) => LoginPage(),
    ROUTESIGNUPSCREEN : (contex) => SignUpPage(),
    ROUTEFORGETSCREEN : (contex) => ForgetPage(),
    ROUTEOTPVERIFYSCREEN : (contex) => OtpVerificationPage(),
    ROUTEHOMESCREEN : (contex) => HomePage(),
    ROUTEDETAILSCREEN : (context) => DetailDescPage(),
  };
}