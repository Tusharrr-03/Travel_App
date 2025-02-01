
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_ui/Data_Routes%20Directory/app_routes.dart';
import 'package:travel_app_ui/Data_Routes%20Directory/arr_data.dart';
import 'package:travel_app_ui/Intro_Directory/intro_page.dart';

import '../Intro Page Ui/intro_page.dart';
class DetailDescPage extends StatefulWidget{
  //final int index;

  //DetailDescPage({required this.index});
  @override
  State<StatefulWidget> createState() => DetailDescPageState();
}
class DetailDescPageState extends State<DetailDescPage>{
  int currentindex = 0;

  /*@override
  void initState() {
    super.initState();
    currentindex = widget.index;
  }*/

  @override
  Widget build(BuildContext context) {
    final description = arrData.mPlacesDescriptions[currentindex];
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 815,
              ),
              Positioned(child: Image.asset(description['background image'], width: double.infinity, height: 480,fit: BoxFit.cover,),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40,  horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context,AppRoutes.ROUTEHOMESCREEN);
                      },
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),child: Icon(description['header content1'], size: 17, color: Colors.white,),
                      ),
                    ),
                    Text(description['header text'] ,style: TextStyle(color: Colors.white , fontSize: 18),),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),child: Image.asset(description['header content2']),
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
                            Center(child: Image.asset(description['dash icon'])),mSizedBox(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(description['title'],style: TextStyle(fontSize: 25),),
                                    Text(description['sub title'],style: TextStyle(color: Colors.black54),),
                                  ],
                                ),
                                  Image.asset(description['profile image'], width: 50, height: 50, fit: BoxFit.cover,),
                                ],
                              ),mSizedBox(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:Row(
                                    children: [
                                      Image.asset(description['location icon']),mSizedBox(mHeight: 0, mWidth: 5),
                                      Text(description['location text'], style: TextStyle(color: Colors.black54),),
                                    ],
                                  ),
                                ),
                                Container(
                                  child:Row(
                                    children: [
                                      Icon(description['rating icon'], color: Colors.yellow, size: 16,),mSizedBox(mHeight: 0, mWidth: 5),
                                      Text(description['rating text']),mSizedBox(mHeight: 0,mWidth: 4),
                                      Text(description['review text'], style: TextStyle(color: Colors.black54 ,fontSize: 14),),
                                    ],
                                  ),
                                ),
                                Container(
                                  child:Row(
                                    children: [
                                      Text.rich(TextSpan(
                                        children: [
                                          TextSpan(
                                            text: description['money text'],
                                            style: TextStyle(color: Colors.blue),
                                          ),
                                          TextSpan(
                                            text: description['over person text'],
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
                                Image.asset(arrData.mPlacesDescriptions [currentindex]['image 1']),
                                Image.asset(arrData.mPlacesDescriptions [currentindex]['image 2']),
                                Image.asset(arrData.mPlacesDescriptions [currentindex]['image 3']),
                                Image.asset(arrData.mPlacesDescriptions [currentindex]['image 4']),
                                Image.asset(arrData.mPlacesDescriptions [currentindex]['image 5']),
                              ],
                            ),mSizedBox(),
                            Text(description['about us heading'], style: TextStyle(fontSize: 22),),mSizedBox(mHeight: 10),
                            Text.rich(TextSpan(
                              children: [
                                TextSpan(
                                  text: arrData.mPlacesDescriptions [currentindex]['about us text1'], style: TextStyle(color: Colors.black54),
                                ),
                                TextSpan(
                                  text: arrData.mPlacesDescriptions [currentindex]['about us text2'],style: TextStyle(color: Colors.deepOrange),
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
