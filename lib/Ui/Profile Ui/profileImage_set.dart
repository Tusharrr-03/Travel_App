import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:travel_app_ui/Ui/Intro%20Page%20Ui/intro_page.dart';

class ProfileimageSet extends StatefulWidget {
  const ProfileimageSet({super.key});

  @override
  State<ProfileimageSet> createState() => _ProfileimageSetState();
}

class _ProfileimageSetState extends State<ProfileimageSet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Profile Image",style: TextStyle(color: Colors.grey),),
            Container(
              width: 60,
              child: Row(
                children: [
                  Icon(Iconsax.pen_add , color: Colors.grey,),mSizedBox(mHeight: 0 , mWidth: 10),
                  Icon(Icons.share , color: Colors.grey,),
                ]
              ),
            )
          ],
        ),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset("assets/images/RudraNathTrek.png" , width: double.infinity,height: 300,),
            ),
            Positioned(
              right: 0,
              left: 0,
              bottom: 0,
              child: Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                ),child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Image.asset("assets/images/icon_dash.png", color: Colors.black,),mSizedBox(mHeight: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Iconsax.close_square),
                          Text("Profile Image", style: TextStyle(fontSize: 19),),
                          Icon(Iconsax.trash)
                        ],
                      ),mSizedBox(),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: Colors.black54),
                                ),child: Icon(Iconsax.camera , color: Colors.blue,),
                              )
                            ],
                          ),mSizedBox(mWidth: 25),
                          Column(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: Colors.black54),
                                ),child: Icon(Iconsax.gallery , color: Colors.blue,),
                              )
                            ],
                          ),mSizedBox(mWidth: 25),
                          Column(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: Colors.black54),
                                ),child: Icon(Iconsax.emoji_happy , color: Colors.blue,),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
