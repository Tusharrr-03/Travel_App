import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:travel_app_ui/Data_Routes%20Directory/app_routes.dart';
import 'package:travel_app_ui/Ui/Intro%20Page%20Ui/intro_page.dart';
TextEditingController firstNameController = TextEditingController();
TextEditingController lastNameController = TextEditingController();
TextEditingController locationController = TextEditingController();
TextEditingController numberController = TextEditingController();

class ProfilePageEdit extends StatelessWidget {
  const ProfilePageEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, AppRoutes.ROUTEPROFILESCREEN);
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                      ),child: Icon(Iconsax.arrow_left_2 , size: 19,),
                    ),
                  ),
                  Text("Edit Profile",style: TextStyle(fontSize: 20),),
                  InkWell(onTap: (){Navigator.pushNamed(context, AppRoutes.ROUTEPROFILESCREEN);}, child: Text("Done",style: TextStyle(fontSize: 18 , color: Colors.blue),)),
                ],
              ),mSizedBox(mHeight: 40),


              Center(child: InkWell(onTap:(){
                Navigator.pushNamed(context, AppRoutes.ROUTEPROPFILEPICTURESCREEN);
              },child: Image.asset("assets/images/bg_ProfileImg.png" , width: 80, height: 80, fit: BoxFit.cover,))),mSizedBox(),
              Center(child: Text("Leonardo" , style: TextStyle(fontSize: 20),)),
              Center(child: Text("Change Profile Picture" , style: TextStyle(fontSize: 18 , color: Colors.blue),)),mSizedBox(),

              /// First Name TextField
              Text("First Name" , style: TextStyle(fontSize: 18 ,),),mSizedBox(mHeight: 10),
              TextField(
                controller: firstNameController,
                decoration: InputDecoration(
                  fillColor: Colors.grey.withOpacity(0.1),
                  filled: true,
                  hintText: "First Name",
                  contentPadding: EdgeInsets.all(15),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),mSizedBox(),

              /// Last Name TextField
              Text("Last Name" , style: TextStyle(fontSize: 18 ,),),mSizedBox(mHeight: 10),
              TextField(
                controller: lastNameController,
                decoration: InputDecoration(
                  fillColor: Colors.grey.withOpacity(0.1),
                  filled: true,
                  hintText: "Last Name",
                  contentPadding: EdgeInsets.all(15),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),mSizedBox(),

              /// Location TextField
              Text("Location" , style: TextStyle(fontSize: 18 ,),),mSizedBox(mHeight: 10),
              TextField(
                controller: locationController,
                decoration: InputDecoration(
                  fillColor: Colors.grey.withOpacity(0.1),
                  filled: true,
                  hintText: "Location",
                  contentPadding: EdgeInsets.all(15),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),mSizedBox(),

              /// Mobile Number TextField
              Text("Mobile Number" , style: TextStyle(fontSize: 18 ,),),mSizedBox(mHeight: 10),
              TextField(
                controller: numberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  fillColor: Colors.grey.withOpacity(0.1),
                  filled: true,
                  prefixText: "+91 ",
                  contentPadding: EdgeInsets.all(15),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.white),
                  ),

                ),
              ),mSizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
