import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_ui/Data_Routes%20Directory/app_routes.dart';
import 'package:travel_app_ui/Intro_Directory/intro_page.dart';
import 'package:travel_app_ui/Login%20Pages/login_page.dart';

import '../Intro Page Ui/intro_page.dart';
import 'login_page.dart';
TextEditingController mNo1 = TextEditingController();
TextEditingController mNo2 = TextEditingController();
TextEditingController mNo3 = TextEditingController();
TextEditingController mNo4 = TextEditingController();

class OtpVerificationPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => OtpVerificationPageState();
}
class OtpVerificationPageState extends State<OtpVerificationPage>{
  int timercount = 90;
  late Timer timer;
  String message = "Resend OTP";

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (Timer time){
      if(timercount > 0){
        timercount --;
        setState(() {

        });
      }else{
        time.cancel();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0XFFFFFFFF),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               mSizedBox(mHeight: 40),
              Center(child: Text("OTP Verification" , style: TextStyle(fontSize: 30),)),mSizedBox(),
              Center(child: Container(width: 300,child: Text("Please check your email tushar@gmail.com to see the verification code" , textAlign: TextAlign.center ,style: TextStyle(color: Colors.black54),))),mSizedBox(),
              Text("OTP Code" , style: TextStyle(fontSize: 23),),mSizedBox(),
              Row(
                children: [
                  mTextFieldOtp(mController: mNo1),mSizedBox(mHeight: 0 , mWidth: 20),
                  mTextFieldOtp(mController: mNo2),mSizedBox(mHeight: 0 , mWidth: 20),
                  mTextFieldOtp(mController: mNo3),mSizedBox(mHeight: 0 , mWidth: 20),
                  mTextFieldOtp(mController: mNo4),mSizedBox(mHeight: 0 , mWidth: 20),
                ],
              ),mSizedBox(mHeight: 20),
              Container(
                width: double.infinity,
                  child: InkWell(
                    onTap: (){},
                    child: Text(
                      (timercount == 0 ? message : "In $timercount seconds").toString(),
                      textAlign: TextAlign.right,
                      style: TextStyle(fontSize: 14 , color: timercount == 0 ? Colors.blue : Colors.black54),),
                  )),
              mSizedBox(mHeight: 20),
              Container(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  Navigator.pushReplacementNamed(context, AppRoutes.ROUTECREATENEWPASSSCREEN);
                }, style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.all(15)
                ) ,child: Text("Verify" , style: TextStyle(fontSize: 18),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Container mTextFieldOtp({required TextEditingController mController}){
  return Container(
    width: 50,
    height: 50,
    child: TextField(
      autofocus: true,

      maxLength: 1,
      controller: mController,
      style: TextStyle(fontSize: 16),textAlign: TextAlign.center,
      decoration: InputDecoration(
        counterText: "",
        contentPadding: EdgeInsets.symmetric(horizontal: 15 , vertical: 15),
        filled: true,
        fillColor: Colors.grey.shade200,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: BorderSide(color: Colors.white)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: BorderSide(color: Colors.white)
        ),
      ),keyboardType: TextInputType.number,
    ),
  );
}