import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_app_ui/Data_Routes%20Directory/app_routes.dart';
import 'package:travel_app_ui/Ui/Intro%20Page%20Ui/intro_page.dart';
import 'package:iconsax/iconsax.dart';
import 'package:travel_app_ui/Ui/Login%20Page%20Ui/login_page.dart';

class ProfilePage extends StatefulWidget {
  static const LOGOUT_KEY = '/logout from page';

  @override
  State<ProfilePage> createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, AppRoutes.ROUTEHOMESCREEN);
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                      ),child: Icon(Iconsax.arrow_left_2,size: 18,),
                    ),
                  ),
                  Text("Profile" , style: TextStyle(fontSize: 20),),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, AppRoutes.ROUTEPROFILEEDITSCREEN);
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                      ),child: Image.asset("assets/images/icon_Edit.png" , width: 10, height: 10,),
                    ),
                  ),
                ],
              ),mSizedBox(mHeight: 40),
              Image.asset("assets/images/bg_ProfileImg.png" , width: 80, height: 80, fit: BoxFit.cover,),mSizedBox(),
              Text("Leonardo" ,style: TextStyle(fontSize: 22),),
              Text("Leonardo@gmail.com" ,style: TextStyle(color: Colors.black54),),mSizedBox(mHeight: 30),

              /// Points And Buket List
              Card(
                elevation: 3,
                color: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Rewards Point", style: TextStyle(fontSize: 16),),
                          Text("360" , style: TextStyle(color: Colors.blue , fontSize: 16),)
                        ],
                      ),mSizedBox(mWidth: 5),
                      SizedBox(
                        width: 1,
                        height: 50,
                        child: Container(
                          color: Colors.black54.withOpacity(0.1),
                        ),
                      ),mSizedBox(mWidth: 5),
                      Column(
                        children: [
                          Text("Travel Trips", style: TextStyle(fontSize: 16),),
                          Text("238" , style: TextStyle(color: Colors.blue , fontSize: 16),)
                        ],
                      ),mSizedBox(mWidth: 5),
                      SizedBox(
                        width: 1,
                        height: 50,
                        child: Container(
                          color: Colors.black54.withOpacity(0.1),
                        ),
                      ),mSizedBox(mWidth: 5),
                      Column(
                        children: [
                          Text("Bucket List", style: TextStyle(fontSize: 16),),
                          Text("473" , style: TextStyle(color: Colors.blue , fontSize: 16),)
                        ],
                      ),mSizedBox(mWidth: 10),
                    ],
                  ),
                ),
              ),mSizedBox(),

              /// Profile changes card
              Card(
                color: Color(0XFFFFFFFF),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 150,
                        child: Row(
                          children: [
                            Icon(Iconsax.profile_2user),mSizedBox(mWidth: 15 , mHeight: 0),
                            Text("Profile", style: TextStyle(fontSize: 19),),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        child: Icon(Iconsax.arrow_left_2 , size: 18,color: Colors.black54,),
                      )
                    ],
                  ),
                ),
              ),
              
              /// Bookmarked
              Card(
                color: Color(0XFFFFFFFF),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 150,
                        child: Row(
                          children: [
                            Image.asset("assets/images/icon_bookmark.png" , color: Colors.black,),mSizedBox(mWidth: 15 , mHeight: 0),
                            Text("Bookmarked", style: TextStyle(fontSize: 19),),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        child: Icon(Iconsax.arrow_left_2 , size: 18,),
                      )
                    ],
                  ),
                ),
              ),
              
              /// Previous Trips
              Card(
                color: Color(0XFFFFFFFF),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 150,
                        child: Row(
                          children: [
                            Image.asset("assets/images/icon_makemytrip.png" , width: 25, height: 25,),mSizedBox(mWidth: 15 , mHeight: 0),
                            Text("Previous Trips", style: TextStyle(fontSize: 19),),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        child: Icon(Iconsax.arrow_left_2 , size: 18,),
                      )
                    ],
                  ),
                ),
              ),
              
              /// Settings
              Card(
                color: Color(0XFFFFFFFF),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 150,
                        child: Row(
                          children: [
                            Icon(Iconsax.setting),mSizedBox(mWidth: 15 , mHeight: 0),
                            Text("Settings", style: TextStyle(fontSize: 19),),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        child: Icon(Iconsax.arrow_left_2 , size: 18,),
                      )
                    ],
                  ),
                ),
              ),
              
              /// Versions Controls
              Card(
                color: Color(0XFFFFFFFF),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 150,
                        child: Row(
                          children: [
                            Image.asset("assets/images/icon_version.png" , color: Colors.black,),mSizedBox(mWidth: 15 , mHeight: 0),
                            Text("Version", style: TextStyle(fontSize: 19),),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        child: Icon(Iconsax.arrow_left_2 , size: 18,),
                      )
                    ],
                  ),
                ),
              ),
              
              /// Log Out Session
              TextButton(
                onPressed: () async{
                  var prefs = await SharedPreferences.getInstance();
                  prefs.setBool(ProfilePage.LOGOUT_KEY, true);

                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
                }, style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                child: Card(
                  color: Color(0XFFFFFFFF),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 150,
                          child: Row(
                            children: [
                              Icon(Iconsax.logout),mSizedBox(mWidth: 15 , mHeight: 0),
                              Text("LogOut", style: TextStyle(fontSize: 19),),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 50,
                          child: Icon(Iconsax.arrow_left_2 , size: 18,),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
