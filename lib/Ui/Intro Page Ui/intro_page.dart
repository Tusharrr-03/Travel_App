import 'package:flutter/material.dart';
import 'package:travel_app_ui/Data_Routes%20Directory/app_routes.dart';
import 'package:travel_app_ui/Data_Routes%20Directory/arr_data.dart';



class IntroPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => IntroPageState();
}

class IntroPageState extends State<IntroPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            mPostionedText(mImage: arrData.mIntroData[currentIndex]['image'] , mText: 'Skip' , context: context),
            mSizedBox(mHeight: 40),
            mTextDesign(mText: arrData.mIntroData[currentIndex]['titie1'], mText2: arrData.mIntroData[currentIndex]['titie2'],mTop1: 80, mleft1: 155, mTop2: 85, mleft2: 155),mSizedBox(),
            Container(
              width: 300,
              child: Text(arrData.mIntroData[currentIndex]['subtitle'], style: TextStyle(color: Colors.black54 , fontSize: 16 , fontFamily: 'Geometr'), textAlign: TextAlign.center,),
            ),Expanded(child: mSizedBox()),
            Container(
              width: double.infinity,
              height: 90,
              padding: EdgeInsets.all(20),
              child: ElevatedButton(onPressed: (){
                if(currentIndex<arrData.mIntroData.length-1){
                  currentIndex++;
                  setState(() {

                  });
                }
                else{
                  Navigator.pushReplacementNamed(context, AppRoutes.ROUTELOGINSCREEN);
                }
              }, style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue
              ) ,child: Text("Get Started" , style: TextStyle(fontSize: 18),)),
            )
          ],
        ),
      ),
    );
  }

}

SizedBox mSizedBox({double? mWidth, double? mHeight}) {
  return SizedBox(
    width: mWidth ?? 0,
    height: mHeight ?? 20,
  );
}

Stack mPostionedText({required String mImage , required String mText , required BuildContext context}){
  return Stack(
    children: [
      Container(
          padding: EdgeInsets.all(0),
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35), bottomRight: Radius.circular(35)),
            child: Image.asset(mImage, fit: BoxFit.cover,),
          )),
      Positioned(
        top: 0,
        left: 320,
        child: TextButton(onPressed: (){
          Navigator.pushReplacementNamed(context, AppRoutes.ROUTELOGINSCREEN);
        },child: Text(mText , style: TextStyle(color: Colors.white),)),
      ),
    ],
  );
}

Stack mTextDesign({required String mText , required String mText2 , String ? mText3 , required double mTop1 , required double mleft1 , required double mTop2 , required double mleft2}){
  return Stack(
    children: [
      Container(
          width: 300,
          height: 104,
          child: Text.rich(textAlign: TextAlign.center, TextSpan(
            children: [
              TextSpan(
                text: mText,
                style: TextStyle(fontSize: 30 ,fontFamily: "Geometr" ),
              ),
              TextSpan(
                text: mText2,
                style: TextStyle(fontSize: 30, color: Colors.deepOrange ,fontFamily: "Geometr" ),
              ),
              TextSpan(
                text: mText3,
                style: TextStyle(fontSize: 30 ,fontFamily: "Geometr" ),
              ),
            ],
          ))),
      Positioned(
          top: mTop1,
          left: mleft1,
          child: Container(
            width: 85,
            height: 20,
            decoration: BoxDecoration(color: Colors.deepOrange, borderRadius: BorderRadius.circular(30)),
          )
      ),
      Positioned(
          top: mTop2,
          left: mleft2,
          child: Container(
            width: 85,
            height: 30,
            decoration: BoxDecoration(color: Color(0XFFFFFFFF), borderRadius: BorderRadius.circular(20)),
          ))
    ],
  );
}

