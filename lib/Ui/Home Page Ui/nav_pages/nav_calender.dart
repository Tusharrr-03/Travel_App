import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:travel_app_ui/Ui/Intro%20Page%20Ui/intro_page.dart';

Color onButtonTap = Colors.blue;

List<Map<String , dynamic>> mCalender =[
  {"month":'Oct', "day": "S", "date": "18"},
  {"month":'Oct', "day": "M", "date": "19"},
  {"month":'Oct', "day": "T", "date": "20"},
  {"month":'Oct', "day": "W", "date": "21"},
  {"month":'Oct', "day": "T", "date": "22"},
  {"month":'Oct', "day": "F", "date": "23"},
  {"month":'Oct', "day": "S", "date": "24"},
  /*{"month":'Oct', "day": "S", "date": "25"},
  {"month":'Oct', "day": "M", "date": "26"},
  {"month":'Oct', "day": "T", "date": "27"},
  {"month":'Oct', "day": "W", "date": "28"},
  {"month":'Oct', "day": "T", "date": "29"},
  {"month":'Oct', "day": "F", "date": "30"},
  {"month":'Oct', "day": "S", "date": "31"},*/
];

List<Map<String ,dynamic>> mScheduledPlaces =[
  {
    'dtSchedule0' : [
      {
      "Image":"assets/images/bg_PosterJodhpur.jpg",
      "calendar icon" : Iconsax.calendar_2,
      "date" : "22 Oct 2024",
      "location" : "Pachetiya Hills",
      "location icon" : Iconsax.location,
      "address" : "City Police, Panchmukhi Balaji",
      "arrow icon" : Iconsax.arrow_right_3,
    },
      {
      "Image":"assets/images/bg_PosterJodhpur2.jpg",
      "calendar icon" : Iconsax.calendar_2,
      "date" : "22 Oct 2024",
      "location" : "Blue City",
      "location icon" : Iconsax.location,
      "address" : "City Police, Panchmukhi Balaji",
      "arrow icon" : Iconsax.arrow_right_3,
    },
      {
      "Image":"assets/images/bg_PosterJodhpur3.png",
      "calendar icon" : Iconsax.calendar_2,
      "date" : "22 Oct 2024",
      "location" : "Toorji ka Jhalra",
      "location icon" : Iconsax.location,
      "address" : "GhantaGhar",
      "arrow icon" : Iconsax.arrow_right_3,
    },
      {
      "Image":"assets/images/bg_PosterJodhpur4.png",
      "calendar icon" : Iconsax.calendar_2,
      "date" : "22 Oct 2024",
      "location" : "Clock Tower",
      "location icon" : Iconsax.location,
      "address" : "GhantaGhar",
      "arrow icon" : Iconsax.arrow_right_3,
    },
    ]
  },
  {
    'dtSchedule1' : [
      {
        "Image":"assets/images/bg_WorldPopular1.png",
        "calendar icon" : Iconsax.calendar_2,
        "date" : "22 Oct 2024",
        "location" : "Pachetiya Hills",
        "location icon" : Iconsax.location,
        "address" : "City Police, Panchmukhi Balaji",
        "arrow icon" : Iconsax.arrow_right_3,
      },
      {
        "Image":"assets/images/bg_WorldPopular2.png",
        "calendar icon" : Iconsax.calendar_2,
        "date" : "22 Oct 2024",
        "location" : "Blue City",
        "location icon" : Iconsax.location,
        "address" : "City Police, Panchmukhi Balaji",
        "arrow icon" : Iconsax.arrow_right_3,
      },
      {
        "Image":"assets/images/bg_WorldPopular3.png",
        "calendar icon" : Iconsax.calendar_2,
        "date" : "22 Oct 2024",
        "location" : "Toorji ka Jhalra",
        "location icon" : Iconsax.location,
        "address" : "GhantaGhar",
        "arrow icon" : Iconsax.arrow_right_3,
      },
      {
        "Image":"assets/images/bg_WorldPopular4.png",
        "calendar icon" : Iconsax.calendar_2,
        "date" : "22 Oct 2024",
        "location" : "Clock Tower",
        "location icon" : Iconsax.location,
        "address" : "GhantaGhar",
        "arrow icon" : Iconsax.arrow_right_3,
      },
    ]
  },
  {
    'dtSchedule2' : [
      {
        "Image":"assets/images/bg_WorldPopular5.png",
        "calendar icon" : Iconsax.calendar_2,
        "date" : "22 Oct 2024",
        "location" : "Pachetiya Hills",
        "location icon" : Iconsax.location,
        "address" : "City Police, Panchmukhi Balaji",
        "arrow icon" : Iconsax.arrow_right_3,
      },
      {
        "Image":"assets/images/bg_WorldPopular6.png",
        "calendar icon" : Iconsax.calendar_2,
        "date" : "22 Oct 2024",
        "location" : "Blue City",
        "location icon" : Iconsax.location,
        "address" : "City Police, Panchmukhi Balaji",
        "arrow icon" : Iconsax.arrow_right_3,
      },
      {
        "Image":"assets/images/bg_PosterJodhpur3.png",
        "calendar icon" : Iconsax.calendar_2,
        "date" : "22 Oct 2024",
        "location" : "Toorji ka Jhalra",
        "location icon" : Iconsax.location,
        "address" : "GhantaGhar",
        "arrow icon" : Iconsax.arrow_right_3,
      },
      {
        "Image":"assets/images/bg_PosterJodhpur4.png",
        "calendar icon" : Iconsax.calendar_2,
        "date" : "22 Oct 2024",
        "location" : "Clock Tower",
        "location icon" : Iconsax.location,
        "address" : "GhantaGhar",
        "arrow icon" : Iconsax.arrow_right_3,
      },
    ]
  },
];

class NavCalender extends StatefulWidget {
  @override
  State<NavCalender> createState() => _NavCalenderState();
}

class _NavCalenderState extends State<NavCalender> {
  int selectedIndex = 0;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                      ),child: Icon(Iconsax.arrow_left_2 , size: 16,),
                    ),
                    Container(
                      child: Text("Schedule" , style: TextStyle(fontSize: 20),),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                      ),child: Icon(Iconsax.notification , size: 16,),
                    ),
                  ],
                ),mSizedBox(mHeight: 50),
                Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            Text("22 Oct, Thursday" , style: TextStyle(fontSize: 20),),
                            Container(
                              child: Row(
                                children: [
                                  Icon(Iconsax.arrow_left_2),
                                  Icon(Iconsax.arrow_right_3),
                                ],
                              ),
                            )
                          ]
                        ),mSizedBox(mHeight: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(mCalender.length, (index) {
                            return InkWell(
                              onTap: (){
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: selectedIndex == index ? Colors.blue : Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    Text(mCalender[index]['month'] , style: TextStyle(color: selectedIndex == index ? Colors.white : Colors.black54 ),),mSizedBox(mHeight: 10),
                                    Text(mCalender[index]['day'] , style: TextStyle(color: selectedIndex == index ? Colors.white : Colors.black54 ),),mSizedBox(mHeight: 10),
                                    Text(mCalender[index]['date'] , style: TextStyle(color: selectedIndex == index ? Colors.white : Colors.black ),),
                                  ],
                                ),
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                ),mSizedBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("My Schedule" , style: TextStyle(fontSize: 22),),
                    Text("View all" , style: TextStyle(color: Colors.blue),),
                  ],
                ),mSizedBox(),

                /// ListView Builder Section
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: mScheduledPlaces[currentIndex]['dtSchedule0'].length,
                    itemBuilder: (context, index) {
                    final Scheduled = mScheduledPlaces[currentIndex]['dtSchedule0'][index];
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(21),
                              child: Image.asset(Scheduled['Image'],height: 70, width: 70, fit: BoxFit.cover,),
                            ),mSizedBox(mHeight: 0,mWidth: 7),
                            Column(
                              children: [
                                Container(
                                  width: 110,
                                  child: Row(
                                    children: [
                                      Icon(Scheduled['calendar icon'], color: Colors.black54, size: 16,),mSizedBox(mHeight: 0,mWidth: 5),
                                      Text(Scheduled['date'] , style: TextStyle(color: Colors.black54 , fontSize: 12),),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 110,
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Text(
                                            overflow: TextOverflow.ellipsis,
                                            Scheduled['location'], style: TextStyle(color: Colors.black , fontSize: 16),)),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 110,
                                  child: Row(
                                    children: [
                                      Icon(Scheduled['location icon'], color: Colors.black54, size: 16,),mSizedBox(mHeight: 0,mWidth: 5),
                                      Expanded(
                                          child: Text(
                                            overflow: TextOverflow.ellipsis,
                                            Scheduled['address'] , style: TextStyle(color: Colors.black54 , fontSize: 12),)),
                                    ],
                                  ),
                                ),
                              ],
                            ),Expanded(child: mSizedBox()),
                            Icon(Scheduled['arrow icon'],size: 16,)
                          ],
                        ),
                      );
                    }
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
