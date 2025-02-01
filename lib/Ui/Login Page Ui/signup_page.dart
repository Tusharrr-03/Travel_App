import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_ui/Data_Routes%20Directory/app_routes.dart';
import 'package:travel_app_ui/Login%20Pages/login_page.dart';
import '../Intro Page Ui/intro_page.dart';
import '../Intro_Directory/intro_page.dart';
import 'login_page.dart';
TextEditingController mNameCOntroller = TextEditingController();

class SignUpPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => SignUpPageState();
}
class SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              mSizedBox(mHeight: 30),
              Container(
                width: double.infinity,
                child: Text("Sign up now" , style: TextStyle(fontSize: 30),textAlign: TextAlign.center,),
              ),mSizedBox(mHeight: 15),
              Container(
                width: double.infinity,
                child: Text("Please fill the details and create the account" , textAlign: TextAlign.center, style: TextStyle(fontSize: 16 , color: Colors.black54,),),
              ),mSizedBox(mHeight: 50),
              mTextField(mObsecureText: false, mController: mNameCOntroller , mHint: "Enter Name"),mSizedBox(),
              mTextField(mObsecureText: false, mController: mEmailController, mHint: "Enter Email"),mSizedBox(),
              mTextField(mObsecureText: true, mController: mPassController, mHint: "Enter Password" , mIcon: Icon(Icons.visibility_off , color: Colors.grey.shade400,)),mSizedBox(mHeight: 15),
              Text("Password must be 8 character", style: TextStyle(color: Colors.black54,)),mSizedBox(mHeight: 40),
              Container(
                height: 55,
                width: double.infinity,
                child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                ) ,child: Text("Sign up", style: TextStyle(fontSize: 20),)),
              ),mSizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account " ,style: TextStyle(color: Colors.black54 ,fontSize: 16),),
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context, AppRoutes.ROUTELOGINSCREEN);
                  }, style: TextButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 0)) ,child: Text("Sign in",style: TextStyle(fontSize: 16 , color: Colors.blue),)),
                ],
              ),mSizedBox(mHeight: 10),
              Container(
                width: double.infinity,
                child: Text("Or Connect" , textAlign: TextAlign.center, style: TextStyle(color: Colors.black54 , fontSize: 16),),
              ),Expanded(child: mSizedBox()),
              mLogoContent(mImage1: 'assets/images/bg_facebook.png', mImage2: 'assets/images/bg_insta.png', mImage3: 'assets/images/bg_twitter.png'),
            ],
          ),
        ),
      ),
    );
  }
}