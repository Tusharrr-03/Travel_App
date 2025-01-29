import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_ui/Data_Routes%20Directory/app_routes.dart';
import 'package:travel_app_ui/Intro_Directory/intro_page.dart';

import 'intro_page.dart';

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(0),
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35), bottomRight: Radius.circular(35)),
                  child: Image.asset("assets/images/bg_img2.png", fit: BoxFit.cover,),
                )),
            mSizedBox(mHeight: 40),
            mTextDesign(mText: "People don’t take trips, trips take", mText2: " people", mTop1: 80, mleft1: 180, mTop2: 85, mleft2: 180),
            mSizedBox(),
            Container(
              width: 300,
              child: Text("To get the best of your adventure you just need to leave and go where you like. we are waiting for you" , style: TextStyle(color: Colors.black54 , fontSize: 16),textAlign: TextAlign.center,),
            ),Expanded(child: mSizedBox()),
            Container(
              width: double.infinity,
              height: 90,
              padding: EdgeInsets.all(20),
              child: ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, AppRoutes.ROUTELOGINSCREEN);
              }, style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9))
              ) ,child: Text("Next"  , style: TextStyle(fontSize: 18),)),
            ),
          ],
        ),
      ),
    );
  }
}