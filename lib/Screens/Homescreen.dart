import 'package:flutter/material.dart';
import 'package:movie/Provider/BottomNav/BottomNavProvider.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Consumer<BottomNav>(
      builder: (context,provider,_) {
        return Scaffold(
          backgroundColor: Colors.grey,

          body:
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 400,
                child: Stack(
                  children: [
                    Image.asset('assets/images/umbrella.png'),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(color: Colors.black),width:400,
                          height: 70,
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              Text("Movie name",style: TextStyle(color: Colors.white)),
                              SizedBox(height: 20,),
                              Text("Date published",style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        )),
                    Positioned(
                        bottom: 0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                      height: 170,
                      width: 100,
                      decoration: BoxDecoration(color: Colors.blueAccent,),
                            child:Image.asset('assets/images/umbrella.png',fit:BoxFit.fitHeight),

                    ),
                        ))
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(10.0),
                child: Text("New Releases",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
              ),
              SizedBox(
                height: 170,
                child:
                ListView.separated(
                  itemBuilder: (context, index) =>
                      GestureDetector(
                        child: Stack(
                            children:[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  height: 170,
                                  width: 100,
                                  decoration: BoxDecoration(color: Colors.blueAccent,),
                                  child:Image.asset('assets/images/umbrella.png',fit:BoxFit.fitHeight),

                                ),
                              ),
                              Positioned(
                                  top: 0,
                                  child: GestureDetector(
                                    child: CircleAvatar(backgroundColor: Colors.black,
                                      child: Icon(Icons.add),),
                                  ) )
                            ]
                        ),
                      ),
                  itemCount: 5,scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(width: 10,),

                ),
              ),
              Padding(
                padding:  EdgeInsets.all(10.0),
                child: Text("Recommended",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
              ),
              SizedBox(
                height: 170,
                child:
                ListView.separated(
                  itemBuilder: (context, index) =>
                      GestureDetector(
                        child: Stack(
                            children:[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  height: 170,
                                  width: 100,
                                  decoration: BoxDecoration(color: Colors.blueAccent,),
                                  child:Image.asset('assets/images/umbrella.png',fit:BoxFit.fitHeight),

                                ),
                              ),
                              Positioned(
                                  top: 0,
                                  child: GestureDetector(
                                    child: CircleAvatar(backgroundColor: Colors.black,
                                      child: Icon(Icons.add),),
                                  ) )
                            ]
                        ),
                      ),
                  itemCount: 5,scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(width: 10,),

                ),
              ),


            ],
          ),
        ),


        );
      }
    );
  }
}

