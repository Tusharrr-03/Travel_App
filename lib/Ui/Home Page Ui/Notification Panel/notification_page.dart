import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_ui/Data_Routes%20Directory/app_routes.dart';
import 'package:travel_app_ui/Data_Routes%20Directory/arr_data.dart';
import 'package:travel_app_ui/Ui/Intro%20Page%20Ui/intro_page.dart';


class NotificationPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => NotificationPageState();
}
class NotificationPageState extends State<NotificationPage>{
  int selectedButtonnumber = 0;
  //int index = 0;

  final Color selectedButton = Colors.blue;
  final Color unselectedButton = Colors.black;

  void OnButtonTap(int index){
    setState(() {
      selectedButtonnumber = index;
    });
  }

  final popularDestination = arrData.mRecentNotification[0]['list1RecentTab'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: SizedBox(
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text("Notification",),
              Positioned(right: 0,child: Text("Clear all" , style: TextStyle(fontSize: 16 , color: Colors.blue),)),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: (){
                    OnButtonTap(0);
                  },child: Text("Recent" , style: TextStyle(fontSize: 18 , color: selectedButtonnumber == 0 ? selectedButton : unselectedButton),)),
                TextButton(onPressed: (){
                    OnButtonTap(1);
                },child: Text("Earlier" , style: TextStyle(fontSize: 18 , color: selectedButtonnumber == 1 ? selectedButton : unselectedButton),)),
                TextButton(onPressed:(){
                    OnButtonTap(2);
                },child: Text("Archieved" , style: TextStyle(fontSize: 18 , color: selectedButtonnumber == 2 ? selectedButton : unselectedButton),)),
              ],
            ),mSizedBox(mHeight: 40),
            ListView.builder(itemCount: popularDestination.length,
                shrinkWrap: true,
                itemBuilder: (_ , index){
                  return Card(
                    color: Colors.white,
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(arrData.mRecentNotification[0]['list1RecentTab'][index]['profile'] , width: 50, height: 50, fit: BoxFit.cover,)),mSizedBox(mHeight: 0,mWidth: 9),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(arrData.mRecentNotification[0]['list1RecentTab'][index]['title'], style: TextStyle(fontSize: 20)),
                              Text(arrData.mRecentNotification[0]['list1RecentTab'][index]['sub title'], style: TextStyle(fontSize: 14 , color: Colors.black54)),
                            ],
                          ),
                          Expanded(
                            child: SizedBox(
                              width: 20,
                              child: Column(
                                children: [
                                  Text(arrData.mRecentNotification[0]['list1RecentTab'][index]['date'],style: TextStyle(fontSize: 10 , color: Colors.black54),),
                                  SizedBox(height: 30,),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
