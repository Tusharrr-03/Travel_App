import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_ui/Data_Routes%20Directory/app_routes.dart';
import 'package:travel_app_ui/Intro_Directory/intro_page.dart';
import '../../Data_Routes Directory/arr_data.dart';
import '../Intro Page Ui/intro_page.dart';



class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HomePageState();
}
class HomePageState extends State<HomePage>{
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Header Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 145,
                      height: 50,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(30)
                      ),child: Row(
                      children: [
                        Image.asset("assets/images/bg_ProfileImg.png"),mSizedBox(mHeight: 0 , mWidth: 10),
                        Text("Tushar Goyal"),
                      ],
                    ),
                    ),mSizedBox(mHeight: 0 , mWidth: 20),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(30),
                      ),child: Image.asset("assets/images/icon_Notifications.png"),
                    ),
                  ],
                ),mSizedBox(mHeight: 40),

                /// Text Area
                Stack(
                  children: [
                    Container(
                      width: 300,
                      child: Text.rich(TextSpan(
                          children: [
                            TextSpan(
                              text: "Explore the \n",
                              style: TextStyle(fontSize: 40),
                            ),
                            TextSpan(
                              text: "Beautiful ",
                              style: TextStyle(fontSize: 40 , fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: "World!",
                              style: TextStyle(fontSize: 40 , color: Colors.deepOrange),
                            )
                          ]
                      )),
                    ),
                    Positioned(
                        top: 95,
                        left: 150,
                        child: Container(
                          width: 125,
                          height: 20,
                          decoration: BoxDecoration(color: Colors.deepOrange, borderRadius: BorderRadius.circular(30)),
                        )
                    ),
                    Positioned(
                        top: 99,
                        left: 150,
                        child: Container(
                          width: 125,
                          height: 30,
                          decoration: BoxDecoration(color: Color(0XFFFFFFFF), borderRadius: BorderRadius.circular(20)),
                        )),
                  ],
                ),mSizedBox(),

                /// 2 Text Area
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Best Destination" , style: TextStyle(fontSize: 25),),
                    Text("View all" , style: TextStyle(color: Colors.blue, fontSize: 18),),
                  ],
                ),mSizedBox(),

                /// ListView Builder Section
                Container(
                  width: 240,
                  height: 320,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: arrData.mPlacesData.length,
                      //scrollDirection: Axis.horizontal,
                      itemBuilder: (context , index){
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            mSizedBox(mHeight: 0,mWidth: 20),
                            Container(
                              child: InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, AppRoutes.ROUTEDETAILSCREEN);
                                },
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      child: Image.asset(arrData.mPlacesData[index]['India']['image'], width: 240 , height: 240,fit: BoxFit.cover,),
                                      borderRadius: BorderRadius.circular(21),
                                    ),
                                    Positioned(
                                        top: 15,
                                        left: 185,
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: Colors.black.withOpacity(0.2),
                                            borderRadius: BorderRadius.circular(20),
                                          ),child: Image.asset(arrData.mPlacesData[index]["India"]['icon1']),
                                        )
                                    )
                                  ],
                                ),
                              ),
                            ),mSizedBox(mHeight: 20,mWidth: 0),
                            Container(
                              child: Row(
                                children: [
                                  Container(child: Text(arrData.mPlacesData[index]['title'],style: TextStyle(fontSize: 19),)),Expanded(child: mSizedBox(mHeight: 0, mWidth: 80)),
                                  Row(
                                    children: [
                                      Row(children: [
                                        Icon(arrData.mPlacesData[index]['icon2'], color: Colors.yellow,size: 18,),mSizedBox(mWidth: 10, mHeight: 0),
                                        Text(arrData.mPlacesData[index]['icon text']),
                                      ],)
                                    ],
                                  ),
                                ],
                              ),
                            ),mSizedBox(mHeight: 10 , mWidth: 0),
                            Container(
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(arrData.mPlacesData[index]['icon3']),mSizedBox(mWidth: 5 , mHeight: 0),
                                      Text(arrData.mPlacesData[index]['sub title'], style: TextStyle(color: Colors.black54),),
                                    ],
                                  ),Expanded(child: mSizedBox(mHeight: 0, mWidth: 80)),
                                  Container(
                                    width: 70,
                                    child: Stack(
                                      children: [
                                        Container(
                                          child: Image.asset(arrData.mPlacesData[index]['profile1']),
                                        ),Positioned(
                                          left: 15,
                                          child: Image.asset(arrData.mPlacesData[index]['profile2']),
                                        ),
                                        Positioned(
                                            left: 30,
                                            child: Image.asset(arrData.mPlacesData[index]['profile3'])
                                        ),
                                        Positioned(
                                          left: 45,
                                          child: Image.asset(arrData.mPlacesData[index]['profile4']),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),mSizedBox(),
                          ],
                        );
                      }
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}