import 'package:flutter/material.dart';
import 'package:socialmeetup/homepage.dart';
import 'package:socialmeetup/homepage2.dart';

void main()=>runApp(MaterialApp(
  title: 'Social meetup',
  home: MyApp(),
  debugShowCheckedModeBanner: false,
));
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync:ScrollableState());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[200],
      child: Stack(
          children: <Widget>[
            TabBarView(
              controller: _tabController,
              children:
            [Home(),
            home2(),
            home3()],
            ),
            Positioned(
               bottom: 45.0,
               right: 20,
               child: FloatingActionButton(onPressed: (){},
               child: Icon(Icons.add,color: Colors.black,),
               backgroundColor: Colors.white,)),
           Container(
             height: 140.0,
            width: MediaQuery.of(context).size.width,
            child: ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70.0)),
              child: Scaffold(
                appBar: PreferredSize(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70.0),),
                    child: Container(
                      color: Colors.white,
                      child: ClipRRect(
                        child: TabBar(
                          indicatorColor: Colors.white,
                          controller:_tabController,
                          tabs: [
                            Container(
                              width: 50.0,
                              decoration:BoxDecoration(
                                border: Border.all(color: Colors.black,width: 5),
                                shape: BoxShape.circle
                              ),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(200.0)),
                                  child: Image(image: AssetImage("asset/naman.jpg"))),
                            ),
                          Container(
                            width: 50.0,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black,width: 2),
                              shape: BoxShape.circle,

                            ),
                            child: Center(child: Icon(Icons.trending_up,color: Colors.black,size: 25.0,)),
                          ),
                          Container(
                            width: 50.0,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black,width: 2),
                              shape: BoxShape.circle
                            ),
                            child: Center(child: Icon(Icons.favorite,color: Colors.black,size: 25.0,)),
                          ),
                            Container(
                              width: 50.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black,width: 2)
                            ),
                            child: Center(child: Icon(Icons.headset,color: Colors.black,size: 25.0,)),
                          )
                        ]),

                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60.0),
                      ),
                      clipBehavior: Clip.antiAlias,
                ),
                    ),
                  ), preferredSize: Size.fromHeight(120.0),),
              ),
            ),
          ),
           ]
        ),
    );
  }
}


