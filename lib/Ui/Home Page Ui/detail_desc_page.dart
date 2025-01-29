import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_ui/Intro_Directory/intro_page.dart';

import '../Intro Page Ui/intro_page.dart';

class DetailDescPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => DetailDescPageState();
}
class DetailDescPageState extends State<DetailDescPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 815,
              ),
              Positioned(child: Image.asset("assets/images/bg_WorldPopular3.png", width: double.infinity, height: 480,fit: BoxFit.cover,),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40,  horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),child: Icon(Icons.arrow_back_ios, size: 17, color: Colors.white,),
                    ),
                    Text("Details" ,style: TextStyle(color: Colors.white , fontSize: 18),),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),child: Image.asset("assets/images/icon_bookmark.png"),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 420,
                child: Column(
                    children: [
                      Container(
                        height: 700,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(60)
                        ),child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(child: Image.asset("assets/images/icon_dash.png")),mSizedBox(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Udaipur" ,style: TextStyle(fontSize: 25),),
                                    Text("Fateh Sagar Lake" ,style: TextStyle(color: Colors.black54),),
                                  ],
                                ),
                                  Image.asset("assets/images/bg_Ellipse 1.png" , width: 50, height: 50, fit: BoxFit.cover,),
                                ],
                              ),mSizedBox(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:Row(
                                    children: [
                                      Image.asset("assets/images/icon_location.png"),mSizedBox(mHeight: 0, mWidth: 5),
                                      Text("Udaipur", style: TextStyle(color: Colors.black54),),
                                    ],
                                  ),
                                ),
                                Container(
                                  child:Row(
                                    children: [
                                      Icon(Icons.star , color: Colors.yellow, size: 16,),mSizedBox(mHeight: 0, mWidth: 5),
                                      Text("4.7"),mSizedBox(mHeight: 0,mWidth: 4),
                                      Text("(2500)", style: TextStyle(color: Colors.black54 ,fontSize: 14),),
                                    ],
                                  ),
                                ),
                                Container(
                                  child:Row(
                                    children: [
                                      Text.rich(TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "\$59/",
                                            style: TextStyle(color: Colors.blue),
                                          ),
                                          TextSpan(
                                            text: "Person",
                                            style: TextStyle(color: Colors.black54),
                                          ),
                                        ],
                                      ))
                                    ],
                                  ),
                                ),
                              ],
                            ),mSizedBox(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset("assets/images/bg_places1.png"),
                                Image.asset("assets/images/bg_places2.png"),
                                Image.asset("assets/images/bg_places3.png"),
                                Image.asset("assets/images/bg_places4.png"),
                                Image.asset("assets/images/bg_places5.png"),
                              ],
                            ),mSizedBox(),
                            Text("About Destination" , style: TextStyle(fontSize: 22),),mSizedBox(mHeight: 10),
                            Text.rich(TextSpan(
                              children: [
                                TextSpan(
                                  text: "You will get a complete travel package on the beaches. Packages in the form of airline tickets, recommended Hotel rooms, Transportation, Have you ever been on holiday to the Greek ETC...", style: TextStyle(color: Colors.black54),
                                ),
                                TextSpan(
                                  text: " Read More",style: TextStyle(color: Colors.deepOrange),
                                )
                              ]
                            )),mSizedBox(mHeight: 10),
                            Container(
                              width: double.infinity,
                              child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                                foregroundColor: Color(0XFFFFFFFF),
                                backgroundColor: Colors.blue,
                              ) ,child: Text("Book Now",style: TextStyle(fontSize: 16),)),
                            )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}