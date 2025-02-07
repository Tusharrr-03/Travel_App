import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:travel_app_ui/Data_Routes%20Directory/app_routes.dart';
import 'package:travel_app_ui/Ui/Intro%20Page%20Ui/intro_page.dart';

class ImgPlacedetail extends StatelessWidget {
  const ImgPlacedetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset("assets/images/bg_WorldPopular1.png",fit: BoxFit.cover,),
          ),

          /// App Bar Section
          Positioned(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pop(context , AppRoutes.ROUTEHOMESCREEN);
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.black54.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),child: Icon(Iconsax.arrow_left_2),
                        ),
                      ),mSizedBox(mHeight: 0, mWidth: 115),
                      Text("View" , style: TextStyle(fontSize: 19 , color: Colors.black54),)
                    ],
                  ),
                ),
              )
          ),

          /// 1 Dummy ChatBox
          Positioned(
            right: 0,
              top: 200,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: 180,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.black54.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                    children: [
                        Image.asset("assets/images/bg_places1.png" , height: 70,fit: BoxFit.cover,),mSizedBox(mHeight: 0,mWidth: 5),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Le Meurice" , style: TextStyle(color: Colors.white , fontSize: 16),),
                            Text("2 Km" , style: TextStyle(color: Colors.white , fontSize: 16),),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
          ),

          /// 2 Dummy ChatBox
          Positioned(
            left: 0,
              top: 400,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: 180,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.black54.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                    children: [
                        Image.asset("assets/images/bg_places3.png" , height: 70,fit: BoxFit.cover,),mSizedBox(mHeight: 0,mWidth: 5),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(child: SizedBox(
                              width: 95,
                              height: 0,
                              child: Text(
                                overflow: TextOverflow.ellipsis,
                                "Mandarin Oriental Paris" , style: TextStyle(color: Colors.white , fontSize: 16),),
                            )),
                            SizedBox(child: Text("1 Km" , style: TextStyle(color: Colors.white , fontSize: 16),)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
          ),

          /// 3 Map Section
          Positioned(
            left: 0,
              right: 0,
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(25),
                  ),child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Eieffle Tower, Paris" , style: TextStyle(fontSize: 19 , color: Colors.white),),
                          SizedBox(
                            width: 40,
                            child: Row(
                              children: [
                                Icon(Iconsax.star1, color: Colors.yellow,size: 20,),
                                Text("4.7", style: TextStyle(fontSize: 14 , color: Colors.white),),
                              ],
                            ),
                          )
                        ],
                      ),mSizedBox(mHeight: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                Icon(Iconsax.location , color: Colors.white,),mSizedBox(mHeight: 0 ,mWidth: 5),
                                Text("France" , style: TextStyle(color: Colors.white , fontSize: 16),),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 70,
                            child: Stack(
                              children: [
                                Container(
                                  child: Image.asset("assets/images/bg_Ellipse 1.png"),
                                ),
                                Positioned(
                                  left: 15,
                                    child: Image.asset("assets/images/bg_Ellipse 2.png")
                                ),
                                Positioned(
                                  left: 30,
                                    child: Image.asset("assets/images/bg_Ellipse 3.png")
                                ),
                                Positioned(
                                  left: 45,
                                    child: Image.asset("assets/images/Group 11.png"),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),mSizedBox(mHeight: 15),
                      Row(
                        children: [
                          Icon(Iconsax.clock , color: Colors.white,),mSizedBox(mWidth: 5),
                          Text("45 min" , style: TextStyle(color: Colors.white , fontSize: 16),),
                        ],
                      ),mSizedBox(mHeight: 5),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        ) ,child: Text("See On Map" , style: TextStyle(fontSize: 16),)),
                      )
                    ],
                    ),
                  ),
                ),
              )
          ),
        ],
      )
    );
  }
}
