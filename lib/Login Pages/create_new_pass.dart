import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_ui/Data_Routes%20Directory/app_routes.dart';
import 'package:travel_app_ui/Ui/Intro%20Page%20Ui/intro_page.dart';
import 'package:travel_app_ui/Ui/Login%20Page%20Ui/login_page.dart';
TextEditingController mOldPassController = TextEditingController();
TextEditingController mNewPassController = TextEditingController();
TextEditingController mVerifyPassController = TextEditingController();

class CreateNewPassPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => CreateNewPassPageState();
}
class CreateNewPassPageState extends State<CreateNewPassPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Center(child: Text("Create New Password." , style: TextStyle(fontSize: 25),)),mSizedBox(mHeight: 50),
              mTextField(mObsecureText: false, mController: mOldPassController, mHint: "Current Password"),mSizedBox(),
              mTextField(mObsecureText: false, mController: mNewPassController, mHint: "New Password"),mSizedBox(),
              mTextField(mObsecureText: false, mController: mVerifyPassController, mHint: "Verify Password"),mSizedBox(),
              Container(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  Navigator.pushReplacementNamed(context, AppRoutes.ROUTEHOMESCREEN);
                }, style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                    padding: EdgeInsets.all(10),
                    foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                ),child: Text("Verify Password" , style: TextStyle(fontSize: 18),)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}