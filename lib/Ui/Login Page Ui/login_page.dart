import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_app_ui/Data_Routes%20Directory/app_routes.dart';
import 'package:travel_app_ui/Intro_Directory/intro_page.dart';

import '../Intro Page Ui/intro_page.dart';

TextEditingController mEmailController = TextEditingController();
TextEditingController mPassController = TextEditingController();

class LoginPage extends StatelessWidget {
  static const LOGIN_KEY = "isLogin";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: (){
                  Navigator.pushReplacementNamed(context, AppRoutes.ROUTEINTROSCREEN);
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(30),
                  ),child: Icon(Iconsax.arrow_left_2),
                ),
              ),
              mSizedBox(mHeight: 30),
              Container(
                width: double.infinity,
                child: Text("Sign in now" , style: TextStyle(fontFamily: "Sfui" , fontSize: 35 , fontWeight: FontWeight.normal),textAlign: TextAlign.center,),
              ),mSizedBox(mHeight: 15),
              Container(
                width: double.infinity,
                child: Text("Please Sign in to save the content in watch list" , style: TextStyle(fontFamily: "Sfui" , fontSize: 17 ,color: Colors.grey),textAlign: TextAlign.center,),
              ),mSizedBox(mHeight: 50),
              mTextField(mObsecureText: false, mController: mEmailController ,mHint: "Enter Email"),mSizedBox(),
              mTextField(mObsecureText: true, mController: mPassController , mHint: "Enter Password",mIcon: Icon(Icons.visibility_off , color: Colors.grey.shade400,)),mSizedBox(mHeight: 9),
              TextButton(onPressed: (){
                Navigator.pushNamed(context, AppRoutes.ROUTEFORGETSCREEN);
              }, style: TextButton.styleFrom(padding: EdgeInsets.all(0)) ,child: Container(
                width: double.infinity,
                child: Text("Forget Password?" , style: TextStyle(color: Colors.blue),textAlign: TextAlign.right,),
              ),
              ),mSizedBox(),
              Container(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(onPressed: () async{
                  var prefs = await SharedPreferences.getInstance();
                  prefs.setBool(LOGIN_KEY, true);
                  Navigator.pushReplacementNamed(context, AppRoutes.ROUTEHOMESCREEN);
                }, style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
                ) ,child: Text("Sign In" , style: TextStyle(fontSize: 20),)),
              ),mSizedBox(mHeight: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don\'t have an account? " ,style: TextStyle(color: Colors.black54 ,fontSize: 16),),
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context, AppRoutes.ROUTESIGNUPSCREEN);
                  }, style: TextButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 0)) ,child: Text("Sign up",style: TextStyle(fontSize: 16 , color: Colors.blue),)),
                ],
              ),mSizedBox(),
              Container(
                width: double.infinity,
                child: Text("Or Connect",style: TextStyle(color: Colors.black54 , fontSize: 18),textAlign: TextAlign.center,),
              ),Expanded(child: mSizedBox()),
              mLogoContent(mImage1: 'assets/images/bg_facebook.png', mImage2: 'assets/images/bg_insta.png', mImage3: 'assets/images/bg_twitter.png')
            ],
          ),
        ),
      ),
    );
  }
}


Container mTextField({required bool mObsecureText , required TextEditingController mController , Icon ? mIcon , required String mHint}){
  return Container(
    child: TextField(
      controller: mController,
      obscureText: mObsecureText,
      style: TextStyle(fontSize: 18),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 20 , horizontal: 15),
        fillColor: Colors.grey.shade200,
        filled: true,
        suffixIcon: mIcon,
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(13),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(13),
          borderSide: BorderSide(color: Colors.white),
        ),
        hintText: mHint,
      ),
      keyboardType: TextInputType.text,
    ),
  );
}

Container mLogoContent ({required String mImage1 , required String mImage2 , required String mImage3}){
  return Container(
    alignment: Alignment.center,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          child: Image.asset(mImage1, fit: BoxFit.cover,),
        ),mSizedBox(mHeight: 0 , mWidth: 20),
        Container(
          width: 50,
          height: 50,
          child: Image.asset(mImage2, fit: BoxFit.cover,),
        ),mSizedBox(mHeight: 0 , mWidth: 20),
        Container(
          width: 50,
          height: 50,
          child: Image.asset(mImage3, fit: BoxFit.cover,),
        ),
      ],
    ),
  );
}

Container mBackIcon (){
  return Container(
    margin: EdgeInsets.only(top: 30),
    width: 40,
    height: 40,
    decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(40)
    ),
    child: Icon(Icons.arrow_back_ios, size: 16,),
  );
}


///Container(
//                 width: double.infinity,
//                 child: const Text.rich(textAlign: TextAlign.center ,TextSpan(
//                   children: [
//                     TextSpan(
//                       text: "Don\'t have an account? ",
//                         style: TextStyle(color: Colors.black54 , fontSize: 18)
//                     ),
//                     TextSpan(
//                       text: "Sign up",
//                       style: TextStyle(color: Colors.blue , fontSize: 18),
//                     ),
//                   ],
//                 )),
//               )