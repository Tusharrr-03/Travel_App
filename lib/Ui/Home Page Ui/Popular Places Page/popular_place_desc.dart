import 'package:flutter/material.dart';
import 'package:travel_app_ui/Data_Routes%20Directory/arr_data.dart';
import 'package:travel_app_ui/Ui/Intro%20Page%20Ui/intro_page.dart';

class PopularPlaceDesc extends StatelessWidget {
  int selectedIndex;
  PopularPlaceDesc({required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 815,
                ),
                Positioned(
                  child: Image.asset(arrData.mPopularplacesData[selectedIndex]['background image inside'] , height: 600 , width: double.infinity ,fit: BoxFit.cover,),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        padding: EdgeInsets.only(left: 4),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),child: Icon(arrData.mPopularplacesData[selectedIndex]['header content1'], color: Colors.white,size: 16,),
                      ),
                      Text(arrData.mPopularplacesData[selectedIndex]['header text'],style: TextStyle(color: Colors.white , fontSize: 19),),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),child: Image.asset(arrData.mPopularplacesData[selectedIndex]['header content2']),
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
                          height: 450,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(child: Image.asset(arrData.mPopularplacesData[selectedIndex]['dash icon'],)),mSizedBox(mHeight: 10,mWidth: 0),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(arrData.mPopularplacesData[selectedIndex]['title'] , style: TextStyle(fontSize: 30),),
                                        Text(arrData.mPopularplacesData[selectedIndex]['sub title'] ,style: TextStyle(fontSize: 16 ,color: Colors.black54), )
                                      ],
                                    ),
                                    Image.asset(arrData.mPopularplacesData[selectedIndex]['profile image'] , width: 50,height: 50, fit: BoxFit.cover,),
                                  ],
                                ),mSizedBox(mHeight: 15),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: 100,
                                      child: Row(
                                        children: [
                                          Image.asset(arrData.mPopularplacesData[selectedIndex]['location icon inside']),mSizedBox(mWidth: 5, mHeight: 0),
                                          Expanded(
                                            child: Text(
                                              overflow: TextOverflow.ellipsis,
                                              arrData.mPopularplacesData[selectedIndex]['location text inside'],style: TextStyle(color: Colors.black54, fontSize: 16),),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 100,
                                      child: Row(
                                        children: [
                                          Icon(arrData.mPopularplacesData[selectedIndex]['rating icon'], color: Colors.yellow,size: 18,),mSizedBox(mWidth: 5, mHeight: 0),
                                          Text(arrData.mPopularplacesData[selectedIndex]['rating text'],style: TextStyle(fontSize: 16),),mSizedBox(mWidth: 5, mHeight: 0),
                                          Text(arrData.mPopularplacesData[selectedIndex]['review text'],style: TextStyle(color: Colors.black54, fontSize: 16),),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 100,
                                      child: Row(
                                        children: [
                                          Text(arrData.mPopularplacesData[selectedIndex]['money text inside'],style: TextStyle(fontSize: 16,color: Colors.blue,),),mSizedBox(mWidth: 5, mHeight: 0),
                                          Text(arrData.mPopularplacesData[selectedIndex]['over person text'],style: TextStyle(color: Colors.black54, fontSize: 16),),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),mSizedBox(mHeight: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(arrData.mPopularplacesData[selectedIndex]['image 1']),
                                    Image.asset(arrData.mPopularplacesData[selectedIndex]['image 2']),
                                    Image.asset(arrData.mPopularplacesData[selectedIndex]['image 3']),
                                    Image.asset(arrData.mPopularplacesData[selectedIndex]['image 4']),
                                    Image.asset(arrData.mPopularplacesData[selectedIndex]['image 5']),
                                  ],
                                ),mSizedBox(),
                                Text(arrData.mPopularplacesData[selectedIndex]['about us heading'] ,style: TextStyle(fontSize: 25),),
                                GestureDetector(
                                  onTap: (){
                                    print("Riched Text Tapped");
                                  },
                                  child: Text.rich(TextSpan(
                                    children: [
                                      TextSpan(
                                        text: arrData.mPopularplacesData[selectedIndex]['about us text1'],
                                      ),
                                      TextSpan(
                                        text: arrData.mPopularplacesData[selectedIndex]['about us text2'],
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
                    )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
