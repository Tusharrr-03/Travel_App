import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_app_ui/Data_Routes%20Directory/app_routes.dart';
import 'package:travel_app_ui/Intro_Directory/intro_page.dart';
import 'package:travel_app_ui/Ui/Home%20Page%20Ui/Home%20Page%20Display/detail_desc_page.dart';
import 'package:travel_app_ui/Ui/Home%20Page%20Ui/nav_pages/nav_calender.dart';
import 'package:travel_app_ui/Ui/Home%20Page%20Ui/nav_pages/nav_home.dart';
import 'package:travel_app_ui/Ui/Profile%20Ui/profile_page.dart';
import '../../../Data_Routes Directory/arr_data.dart';
import '../../Intro Page Ui/intro_page.dart';

List<Widget> navPages = [
  NavHomePage(),
  NavCalender(),
  NavHomePage(),
  NavHomePage(),
  ProfilePage(),
];

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int index = 0;
  int selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(minutes: 30), () async {
      var prefs = await SharedPreferences.getInstance();

      prefs.getBool(ProfilePage.LOGOUT_KEY);
      Navigator.pushReplacementNamed(context, AppRoutes.ROUTELOGINSCREEN);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: navPages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home_1),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.calendar_1),
            label: "Calender",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.search_normal_1),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.message_add1),
            label: "Message",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.profile_2user),
            label: "Profile",
          ),
        ],
        unselectedItemColor: Colors.black54,
        selectedItemColor: Colors.blue,
        currentIndex: selectedIndex,
        onTap: (value) {
          selectedIndex = value;
          setState(() {});
        },
      ),
    );
  }
}
