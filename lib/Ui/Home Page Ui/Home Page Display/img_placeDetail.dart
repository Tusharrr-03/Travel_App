import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:travel_app_ui/Data_Routes%20Directory/app_routes.dart';
import 'package:travel_app_ui/Data_Routes%20Directory/arr_data.dart';
import 'package:travel_app_ui/Ui/Intro%20Page%20Ui/intro_page.dart';

/*List<Map<String, dynamic>> mBackground = [
  {
    'background img' : 'assets/images/bg_WorldPopular1.png',
    'icon' : Iconsax.arrow_left_2,
    'header-text' : 'View',
    'chat-Image1' : 'assets/images/bg_places1.png',
    'chat-Text1' : 'Le Meurice',
    'chat-Km' : '2 Km',
    'chat-Image2' : 'assets/images/bg_places3.png',
    'chat-Text2' : 'Mandarin Oriental Paris',
    'chat-Km2' : '1 Km',
    'bottom-box-TextHeading' : 'Eieffle Tower, Paris',
    'bottom-box-Icon' : Iconsax.star1,
    'bottom-box-Text' : '4.7',
    'bottom-col-Icon' : Iconsax.location ,
    'bottom-col-Text' : 'France',
    'bottom-col-Positioned' : 'assets/images/bg_Ellipse 1.png',
    'bottom-col-Positioned2' : 'assets/images/bg_Ellipse 2.png',
    'bottom-col-Positioned3' : 'assets/images/bg_Ellipse 3.png',
    'bottom-col-Positioned4' : 'assets/images/Group 11.png',
    'bottom-col2-Icon' : Iconsax.clock ,
    'bottom-col2-Text' : '45 min' ,
  },
  {
    'background img' : 'assets/images/bg_WorldPopular2.png',
    'icon' : Iconsax.arrow_left_2,
    'header-text' : 'View',
    'chat-Image1' : 'assets/images/bg_places1.png',
    'chat-Text1' : 'Le Meurice',
    'chat-Km' : '2 Km',
    'chat-Image2' : 'assets/images/bg_places3.png',
    'chat-Text2' : 'Mandarin Oriental Paris',
    'chat-Km2' : '1 Km',
    'bottom-box-TextHeading' : 'Eieffle Tower, Paris',
    'bottom-box-Icon' : Iconsax.star1,
    'bottom-box-Text' : '4.7',
    'bottom-col-Icon' : Iconsax.location ,
    'bottom-col-Text' : 'France',
    'bottom-col-Positioned' : 'assets/images/bg_Ellipse 1.png',
    'bottom-col-Positioned2' : 'assets/images/bg_Ellipse 2.png',
    'bottom-col-Positioned3' : 'assets/images/bg_Ellipse 3.png',
    'bottom-col-Positioned4' : 'assets/images/Group 11.png',
    'bottom-col2-Icon' : Iconsax.clock ,
    'bottom-col2-Text' : '45 min' ,
  },
  {
    'background img' : 'assets/images/bg_WorldPopular3.png',
    'icon' : Iconsax.arrow_left_2,
    'header-text' : 'View',
    'chat-Image1' : 'assets/images/bg_places1.png',
    'chat-Text1' : 'Le Meurice',
    'chat-Km' : '2 Km',
    'chat-Image2' : 'assets/images/bg_places3.png',
    'chat-Text2' : 'Mandarin Oriental Paris',
    'chat-Km2' : '1 Km',
    'bottom-box-TextHeading' : 'Eieffle Tower, Paris',
    'bottom-box-Icon' : Iconsax.star1,
    'bottom-box-Text' : '4.7',
    'bottom-col-Icon' : Iconsax.location ,
    'bottom-col-Text' : 'France',
    'bottom-col-Positioned' : 'assets/images/bg_Ellipse 1.png',
    'bottom-col-Positioned2' : 'assets/images/bg_Ellipse 2.png',
    'bottom-col-Positioned3' : 'assets/images/bg_Ellipse 3.png',
    'bottom-col-Positioned4' : 'assets/images/Group 11.png',
    'bottom-col2-Icon' : Iconsax.clock ,
    'bottom-col2-Text' : '45 min' ,
  },
  {
    'background img' : 'assets/images/bg_WorldPopular5.png',
    'icon' : Iconsax.arrow_left_2,
    'header-text' : 'View',
    'chat-Image1' : 'assets/images/bg_places1.png',
    'chat-Text1' : 'Le Meurice',
    'chat-Km' : '2 Km',
    'chat-Image2' : 'assets/images/bg_places3.png',
    'chat-Text2' : 'Mandarin Oriental Paris',
    'chat-Km2' : '1 Km',
    'bottom-box-TextHeading' : 'Eieffle Tower, Paris',
    'bottom-box-Icon' : Iconsax.star1,
    'bottom-box-Text' : '4.7',
    'bottom-col-Icon' : Iconsax.location ,
    'bottom-col-Text' : 'France',
    'bottom-col-Positioned' : 'assets/images/bg_Ellipse 1.png',
    'bottom-col-Positioned2' : 'assets/images/bg_Ellipse 2.png',
    'bottom-col-Positioned3' : 'assets/images/bg_Ellipse 3.png',
    'bottom-col-Positioned4' : 'assets/images/Group 11.png',
    'bottom-col2-Icon' : Iconsax.clock ,
    'bottom-col2-Text' : '45 min' ,
  },
];*/


class ImgPlacedetail extends StatelessWidget {
  int currentIndex;
  ImgPlacedetail({required this.currentIndex , required this.parentIndex});
  int parentIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: arrData.mPlacesData[currentIndex]['Popular Places'].length,
          itemBuilder: (context , index) {
            return Stack(
          children: [
            Container(
              child: Image.asset(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['background img'],fit: BoxFit.cover,height: 780,),
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
                            ),child: Icon(arrData.mPlacesData[0]['icon'], color: Colors.white,),
                          ),
                        ),mSizedBox(mHeight: 0, mWidth: 115),
                        Text(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['header-text'] , style: TextStyle(fontSize: 19 , color: Colors.black54),)
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
                        Image.asset(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['chat-Image1'] , height: 70,fit: BoxFit.cover,),mSizedBox(mHeight: 0,mWidth: 5),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['chat-Text1'] , style: TextStyle(color: Colors.white , fontSize: 16),),
                            Text(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['chat-Km'] , style: TextStyle(color: Colors.white , fontSize: 16),),
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
                        Image.asset(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['chat-Image2'], height: 70,fit: BoxFit.cover,),mSizedBox(mHeight: 0,mWidth: 5),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(child: SizedBox(
                              width: 95,
                              height: 0,
                              child: Text(
                                overflow: TextOverflow.ellipsis,
                                arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['chat-Text2'] , style: TextStyle(color: Colors.white , fontSize: 16),),
                            )),
                            SizedBox(child: Text(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['chat-Km2'], style: TextStyle(color: Colors.white , fontSize: 16),)),
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
                            Text(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['bottom-box-TextHeading'] , style: TextStyle(fontSize: 19 , color: Colors.white),),
                            SizedBox(
                              width: 40,
                              child: Row(
                                children: [
                                  Icon(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['bottom-box-Icon'], color: Colors.yellow,size: 20,),
                                  Text(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['bottom-box-Text'], style: TextStyle(fontSize: 14 , color: Colors.white),),
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
                                  Icon(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['bottom-col-Icon'] , color: Colors.white,),mSizedBox(mHeight: 0 ,mWidth: 5),
                                  Text(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['bottom-col-Text'] , style: TextStyle(color: Colors.white , fontSize: 16),),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 70,
                              child: Stack(
                                children: [
                                  Container(
                                    child: Image.asset(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['bottom-col-Positioned']),
                                  ),
                                  Positioned(
                                      left: 15,
                                      child: Image.asset(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['bottom-col-Positioned2'])
                                  ),
                                  Positioned(
                                      left: 30,
                                      child: Image.asset(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['bottom-col-Positioned3'])
                                  ),
                                  Positioned(
                                    left: 45,
                                    child: Image.asset(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['bottom-col-Positioned4']),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),mSizedBox(mHeight: 15),
                        Row(
                          children: [
                            Icon(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['bottom-col2-Icon'], color: Colors.white,),mSizedBox(mWidth: 5),
                            Text(arrData.mPlacesData[parentIndex]['Popular Places'][currentIndex]['bottom-col2-Text'], style: TextStyle(color: Colors.white , fontSize: 16),),
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
        );
      })
    );
  }
}
