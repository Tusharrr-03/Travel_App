import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_ui/Data_Routes%20Directory/app_routes.dart';
import 'package:travel_app_ui/Intro_Directory/intro_page.dart';
import '../../Data_Routes Directory/arr_data.dart';
import '../Intro Page Ui/intro_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
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
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        children: [
                          Image.asset("assets/images/bg_ProfileImg.png"),
                          mSizedBox(mHeight: 0, mWidth: 10),
                          Text("Tushar Goyal"),
                        ],
                      ),
                    ),
                    mSizedBox(mHeight: 0, mWidth: 20),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, AppRoutes.ROUTENOTIFICATIONSCREEN);
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child:
                            Image.asset("assets/images/icon_Notifications.png"),
                      ),
                    ),
                  ],
                ),
                mSizedBox(mHeight: 40),
          
                /// Text Area
                Stack(
                  children: [
                    Container(
                      width: 300,
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                          text: "Explore the \n",
                          style: TextStyle(fontSize: 40),
                        ),
                        TextSpan(
                          text: "Beautiful ",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: "World!",
                          style:
                              TextStyle(fontSize: 40, color: Colors.deepOrange),
                        )
                      ])),
                    ),
                    Positioned(
                        top: 95,
                        left: 150,
                        child: Container(
                          width: 125,
                          height: 20,
                          decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(30)),
                        )),
                    Positioned(
                        top: 99,
                        left: 150,
                        child: Container(
                          width: 125,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Color(0XFFFFFFFF),
                              borderRadius: BorderRadius.circular(20)),
                        )),
                  ],
                ),
                mSizedBox(),
          
                /// 2 Text Area
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Best Destination",
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(color: Colors.blue, fontSize: 18),
                    ),
                  ],
                ),
                mSizedBox(),
          
                /// ListView Builder Section1
                InkWell(onTap: (){
                  Navigator.pushNamed(context, AppRoutes.ROUTEPOPULARPLACESSCREEN);
                }, child: Text(arrData.mPlacesData[0]['Places_title'] , style: TextStyle(fontSize: 20),)),
                mSizedBox(),
                SizedBox(
                  height: 350, // Increased height to accommodate all content
                  child: ListView.builder(
                      itemCount: arrData.mPlacesData.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final place =
                        arrData.mPlacesData[0]['Popular Places'][index];
                        return Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.pushNamed(
                                      context, AppRoutes.ROUTEDETAILSCREEN);
                                },
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(21),
                                      child: Image.asset(
                                        place['image'],
                                        width: 240,
                                        height: 240,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                        top: 15,
                                        right: 15,
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color:
                                            Colors.black.withOpacity(0.2),
                                            borderRadius:
                                            BorderRadius.circular(20),
                                          ),
                                          child: Image.asset(place['icon1']),
                                        ))
                                  ],
                                ),
                              ),
                              mSizedBox(mHeight: 20),
                              SizedBox(
                                width: 240,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      place['title'],
                                      style: TextStyle(fontSize: 19),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          place['icon2'],
                                          color: Colors.yellow,
                                          size: 18,
                                        ),
                                        mSizedBox(mWidth: 10),
                                        Text(place['icon text']),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              mSizedBox(mHeight: 10),
                              SizedBox(
                                width: 240,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(place['icon3']),
                                        mSizedBox(mWidth: 5),
                                        Text(
                                          place['sub title'],
                                          style:
                                          TextStyle(color: Colors.black54),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 70,
                                      child: Stack(
                                        children: [
                                          Image.asset(place['profile1']),
                                          Positioned(
                                            left: 15,
                                            child:
                                            Image.asset(place['profile2']),
                                          ),
                                          Positioned(
                                            left: 30,
                                            child:
                                            Image.asset(place['profile3']),
                                          ),
                                          Positioned(
                                            left: 45,
                                            child:
                                            Image.asset(place['profile4']),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                mSizedBox(),
          
                /// ListView Builder Section 2
                Text(arrData.mPlacesData[1]['Places_title'] , style: TextStyle(fontSize: 20),),
                mSizedBox(),
                SizedBox(
                  height: 350, // Increased height to accommodate all content
                  child: ListView.builder(
                      itemCount: arrData.mPlacesData.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final place =
                            arrData.mPlacesData[1]['Popular Places'][index];
                        return Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {

                                },
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(21),
                                      child: Image.asset(
                                        place['image'],
                                        width: 240,
                                        height: 240,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                        top: 15,
                                        right: 15,
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.black.withOpacity(0.2),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Image.asset(place['icon1']),
                                        ))
                                  ],
                                ),
                              ),
                              mSizedBox(mHeight: 20),
                              SizedBox(
                                width: 240,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      place['title'],
                                      style: TextStyle(fontSize: 19),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          place['icon2'],
                                          color: Colors.yellow,
                                          size: 18,
                                        ),
                                        mSizedBox(mWidth: 10),
                                        Text(place['icon text']),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              mSizedBox(mHeight: 10),
                              SizedBox(
                                width: 240,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(place['icon3']),
                                        mSizedBox(mWidth: 5),
                                        Text(
                                          place['sub title'],
                                          style:
                                              TextStyle(color: Colors.black54),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 70,
                                      child: Stack(
                                        children: [
                                          Image.asset(place['profile1']),
                                          Positioned(
                                            left: 15,
                                            child:
                                                Image.asset(place['profile2']),
                                          ),
                                          Positioned(
                                            left: 30,
                                            child:
                                                Image.asset(place['profile3']),
                                          ),
                                          Positioned(
                                            left: 45,
                                            child:
                                                Image.asset(place['profile4']),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                mSizedBox(),
          
                /// List View Section 3
                Text(arrData.mPlacesData[2]['Places_title'] ,  style: TextStyle(fontSize: 20),),
                mSizedBox(),
                SizedBox(
                  height: 350,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount: arrData.mPlacesData.length,
                      itemBuilder: (_ , index){
                      final place2 = arrData.mPlacesData[index]['Popular Places'][index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, AppRoutes.ROUTEDETAILSCREEN);
                            },
                            child: Stack(
                              children: [
                                ClipRRect(
                                  child: Image.asset(place2['image'] , height: 240, width: 240, fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(21),
                                ),
                                Positioned(
                                  top: 15,
                                    right : 15,
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(25),
                                      ),child: Image.asset(place2['icon1']),
                                    )
                                )
                              ],
                            ),
                          ),
                          mSizedBox(mHeight: 20),
                          SizedBox(
                            width: 240,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(place2['title'] , style: TextStyle(fontSize: 18),),
                                Row(
                                  children: [
                                    Icon(place2['icon2'] , size: 18, color: Colors.yellow,),
                                    Text(place2['icon text'] , )
                                  ],
                                )
                              ],
                            ),
                          ),mSizedBox(),
                          SizedBox(
                            width: 240,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(place2['icon3']),mSizedBox(mHeight: 0,mWidth: 5),
                                    Text(place2['sub title'], style: TextStyle(color: Colors.black54),),
                                  ],
                                ),
                                SizedBox(
                                  width: 70,
                                  child: Stack(
                                    children: [
                                      Image.asset(place2['profile1']),
                                      Positioned(left:15,child: Image.asset(place2['profile2'])),
                                      Positioned(left:30,child: Image.asset(place2['profile3'])),
                                      Positioned(left:45,child: Image.asset(place2['profile4'])),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


