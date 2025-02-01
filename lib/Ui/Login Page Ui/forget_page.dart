import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_ui/Data_Routes%20Directory/app_routes.dart';
import 'package:travel_app_ui/Login%20Pages/login_page.dart';
import '../Intro Page Ui/intro_page.dart';
import '../Intro_Directory/intro_page.dart';
import 'login_page.dart';

class ForgetPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              mSizedBox(mHeight: 30),
              Container(
                width: double.infinity,
                child: Text("Forget password" , style: TextStyle(fontSize: 35),textAlign: TextAlign.center,),
              ),mSizedBox(),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  width: 300,
                  child: Text("Enter your Email account to reset your password" , style: TextStyle(fontSize: 18 , color: Colors.black54),textAlign: TextAlign.center,),
                ),
              ),mSizedBox(mHeight: 60),
              mTextField(mObsecureText: false, mController: mEmailController , mHint: "Enter Email"),mSizedBox(mHeight: 30),
              Container(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(onPressed: (){
                  Navigator.pushReplacementNamed(context, AppRoutes.ROUTEOTPVERIFYSCREEN);
                  showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.pushReplacementNamed(context, AppRoutes.ROUTEOTPVERIFYSCREEN);
                      }, style: TextButton.styleFrom(padding: EdgeInsets.all(0) , foregroundColor: Colors.black , backgroundColor: Colors.white) ,child: Text("Enter OTP") )
                    ],
                    contentPadding: EdgeInsets.all(20),
                    content: Container(
                      width: double.infinity,
                      height: 191,
                      child: Column(
                        children: [
                          Image.asset("assets/images/bg_email.png"),mSizedBox(),
                          Text("Check your email" , style: TextStyle(fontSize: 20),),mSizedBox(),
                          Container(
                            width: 200,
                            child: Text("We have send password recovery instruction to your email", style: TextStyle(color: Colors.black54 ,fontSize: 18) , textAlign: TextAlign.center,),
                          ),
                        ],
                      ),
                    ),
                  ),
                        );
                      },style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.all(10)
                ) ,child: Text("Reset Password" , style: TextStyle(fontSize: 20),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}