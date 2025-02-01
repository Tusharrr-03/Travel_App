import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_ui/Data_Routes%20Directory/arr_data.dart';
import 'package:travel_app_ui/Ui/Intro%20Page%20Ui/intro_page.dart';




class PopularPlacesPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => PopularPlacesPageState();
}
class PopularPlacesPageState extends State<PopularPlacesPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Popular Places"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("All Popular Places" , style: TextStyle(fontSize: 22),),mSizedBox(),
            GridView.builder(
              shrinkWrap: true,
              itemCount: arrData.mPopularplacesData.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  childAspectRatio: 9/16,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10
                ),
                itemBuilder: (context , index){
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(21),
                              child: Image.asset(arrData.mPopularplacesData[index]['background image'] , width: 200,  height: 200,fit: BoxFit.cover,),
                            ),
                            Positioned(
                              top: 15,
                                right: 20,
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                )
                            ),
                            Positioned(
                              top: 21,
                                right : 26,
                                child: Image.asset(arrData.mPopularplacesData[index]['stack icon'], color: Colors.white,width: 18, height: 18,),
                            )
                          ],
                        ),mSizedBox(mHeight: 10),
                        SizedBox(
                          width: 240,
                            child: Text(arrData.mPopularplacesData[index]['text'] , style: TextStyle(fontSize: 20),)
                        ),
                        SizedBox(
                          width: 240,
                          child: Row(
                            children: [
                              Image.asset(arrData.mPopularplacesData[index]['location icon']),mSizedBox(mWidth: 5),
                              Text(arrData.mPopularplacesData[index]['location text']),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 240,
                          child: Row(
                            children: [
                              Icon(arrData.mPopularplacesData[index]['review icon'] , color: Colors.yellow,size: 18,),
                              Icon(arrData.mPopularplacesData[index]['review icon'] , color: Colors.yellow,size: 18,),
                              Icon(arrData.mPopularplacesData[index]['review icon'] , color: Colors.yellow,size: 18,),mSizedBox(mWidth: 5),
                              Text(arrData.mPopularplacesData[index]['Review text']),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 240,
                          child: Row(
                            children: [
                              Text(arrData.mPopularplacesData[index]['money text'] , style: TextStyle(color: Colors.blue),),
                              Text(arrData.mPopularplacesData[index]['Person text']),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
            )
          ],
        ),
      )
    );
  }
}