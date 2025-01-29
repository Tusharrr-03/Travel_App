import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_ui/Intro_Directory/intro_page.dart';
import '../../Data_Routes Directory/app_routes.dart';
import '../Data_Routes Directory/app_routes.dart';
import 'intro_page.dart';

class FirstPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => FirstPageState();
}
class FirstPageState extends State<FirstPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      body: SafeArea(
        child: Column(
          children: [
            mPostionedText(mImage: "assets/images/bg_img3.png", mText: 'Skip'),mSizedBox(mHeight: 40),
            Stack(
              children: [
                Container(
                  width: 300,
                  height: 100,
                  child: Text.rich(textAlign: TextAlign.center,TextSpan(
                    children:[
                      TextSpan(
                        text: "It’s a big world out there go ",
                        style: TextStyle(fontSize: 30,fontFamily: "Geometr" ),
                      ),
                      TextSpan(
                          text: "explore",
                          style: TextStyle(fontSize: 30, color: Colors.deepOrange,fontFamily: "Geometr" )
                      ),
                    ],
                  ),
                  ),
                ),
                Positioned(
                  top: 80,
                    left: 160,
                    child: Container(
                      width: 100,
                      height: 20,
                      decoration: BoxDecoration(color: Colors.deepOrange, borderRadius: BorderRadius.circular(30)),
                    )
                ),
                Positioned(
                  top: 85,
                    left: 160,
                    child: Container(
                  width: 100,
                  height: 20,
                  decoration: BoxDecoration(color: Color(0XFFFFFFFF), borderRadius: BorderRadius.circular(20)),
                ))
              ],
            ),mSizedBox(),
            Container(
              width: 300,
              child: Text("To get the best of your adventure you just need to leave and go where you like. we are waiting for you" , style: TextStyle(fontFamily: "Geometr" , color: Colors.black54 , fontSize: 16),textAlign: TextAlign.center,),
            ),Expanded(child: mSizedBox()),
            Container(
              width: double.infinity,
              height: 90,
              padding: EdgeInsets.all(20),
              child: ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, AppRoutes.ROUTESECONDSCREEN);
              }, style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue
              ) ,child: Text("Next" , style: TextStyle(fontSize: 18),)),
            ),
          ],
        ),
      ),
    );
  }
  Stack mPostionedText({required String mImage , required String mText}){
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
            Navigator.pushNamed(context, AppRoutes.ROUTELOGINSCREEN);
          },child: Text(mText , style: TextStyle(color: Colors.white),)),
        ),
      ],
    );
  }
}