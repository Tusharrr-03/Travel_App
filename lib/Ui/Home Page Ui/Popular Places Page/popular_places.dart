import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_ui/Data_Routes%20Directory/app_routes.dart';
import 'package:travel_app_ui/Data_Routes%20Directory/arr_data.dart';
import 'package:travel_app_ui/Ui/Home%20Page%20Ui/Popular%20Places%20Page/popular_place_desc.dart';
import 'package:travel_app_ui/Ui/Intro%20Page%20Ui/intro_page.dart';




class PopularPlacesPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => PopularPlacesPageState();
}
class PopularPlacesPageState extends State<PopularPlacesPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Popular Places"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                  final place = arrData.mPopularplacesData[index];
                    return Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => PopularPlaceDesc(selectedIndex: index)));
                            },
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(21),
                                  child: Image.asset(place['background image'] , width: 200,  height: 200,fit: BoxFit.cover,),
                                ),
                                Positioned(
                                    top: 15,
                                    right: 10,
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
                                  top: 22,
                                  right : 16,
                                  child: Image.asset(place['stack icon'], color: Colors.white,width: 18, height: 18,),
                                )
                              ],
                            ),
                            ), mSizedBox(mHeight: 10),
                          SizedBox(
                            width: 240,
                              child: Text(place['text'] , style: TextStyle(fontSize: 20),)
                          ),
                          SizedBox(
                            width: 240,
                            child: Row(
                              children: [
                                Image.asset(place['location icon']),mSizedBox(mWidth: 5),
                                Text(place['location text']),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 240,
                            child: Row(
                              children: [
                                Icon(place['review icon'] , color: Colors.yellow,size: 18,),
                                Icon(place['review icon'] , color: Colors.yellow,size: 18,),
                                Icon(place['review icon'] , color: Colors.yellow,size: 18,),mSizedBox(mWidth: 5),
                                Text(place['Review text']),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 240,
                            child: Row(
                              children: [
                                Text(place['money text'] , style: TextStyle(color: Colors.blue),),
                                Text(place['Person text']),
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
        ),
      )
    );
  }
}