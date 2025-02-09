import 'package:flutter/material.dart';
import 'package:travel_app_ui/Data_Routes%20Directory/app_routes.dart';
import 'package:travel_app_ui/Data_Routes%20Directory/arr_data.dart';
import 'package:travel_app_ui/Ui/Intro%20Page%20Ui/intro_page.dart';

class DetailDescPage extends StatelessWidget {
  int currentIndex;
  DetailDescPage({required this.currentIndex , required this.parentIndex});
  int parentIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 815,
              ),
              Positioned(child: InkWell(onTap:(){
                Navigator.pushNamed(context, AppRoutes.ROUTEIMAGEPLACEDESCRIPTION);
              },child: Image.asset(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['background image'] , height: 600 , width: double.infinity ,fit: BoxFit.cover,)),),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      padding: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20)
                      ),child: InkWell(onTap: (){Navigator.pop(context,AppRoutes.ROUTEHOMESCREEN);},
                        child: Icon(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['header content1'] , color: Colors.white, size: 16,)),
                    ),
                    Text(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['header text'],style: TextStyle(color: Colors.white ,fontSize: 22),),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20)
                      ),child: Image.asset(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['header content2']),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 420,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 700,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              Center(child: Image.asset(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['dash icon'])),mSizedBox(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['title inside'] , style: TextStyle(fontSize: 30),),
                                      Text(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['sub title inside'] , style: TextStyle(fontSize: 16, color: Colors.black54),)
                                    ],
                                  ),
                                  Image.asset(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['profile image'] , width: 50, height: 50, fit: BoxFit.cover,),
                                ],
                              ),mSizedBox(mHeight: 15),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: Row(
                                      children: [
                                        Image.asset(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['location icon']),mSizedBox(mWidth: 6 , mHeight: 0),
                                        Expanded(
                                            child: Text(
                                              overflow: TextOverflow.ellipsis,
                                              arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['location text'] , style: TextStyle(color: Colors.black54),)),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 100,
                                    child: Row(
                                      children: [
                                        Icon(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['rating icon'], color: Colors.yellow,size: 18,),mSizedBox(mWidth: 5, mHeight: 0),
                                        Text(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['rating text'],style: TextStyle(fontSize: 16),),mSizedBox(mWidth: 5, mHeight: 0),
                                        Text(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['review text'],style: TextStyle(color: Colors.black54, fontSize: 16),),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 100,
                                    child: Row(
                                      children: [
                                        Text(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['money text'],style: TextStyle(fontSize: 16,color: Colors.blue,),),mSizedBox(mWidth: 5, mHeight: 0),
                                        Text(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['over person text'],style: TextStyle(color: Colors.black54, fontSize: 16),),
                                      ],
                                    ),
                                  ),
                                ],
                              ),mSizedBox(mHeight: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['image 1']),
                                Image.asset(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['image 2']),
                                Image.asset(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['image 3']),
                                Image.asset(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['image 4']),
                                Image.asset(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['image 5']),
                              ],
                            ),mSizedBox(mHeight: 15),
                            Text(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['about us heading'] ,style: TextStyle(fontSize: 25),),
                            GestureDetector(
                              onTap: (){
                                print("Riched Text Tapped");
                              },
                              child: Text.rich(TextSpan(
                                children: [
                                  TextSpan(
                                    text: arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['about us text1'],
                                  ),
                                  TextSpan(
                                    text: arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['about us text2'],
                                    style: TextStyle(color: Colors.deepOrange),
                                  ),
                                ],
                              )),
                            ),mSizedBox(),
                            Container(
                              width: double.infinity,
                              child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                              ) ,child: Text("Book Now" , style: TextStyle(fontSize: 19),)),
                            )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}