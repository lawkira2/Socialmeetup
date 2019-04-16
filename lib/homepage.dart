import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 600.0,
          color: Colors.deepPurple[100],
        ),

        Container(
          height: 500.0,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder:(BuildContext context,int index){
              return  PageViewerChild(index: index+6);

            },
            itemCount: 3,

          ),
        ),
        Positioned(
            top: 470.0,
            left: MediaQuery.of(context).size.width - 70.0,
            child: FloatingActionButton(onPressed: (){},
              backgroundColor: Colors.white,
              elevation: 10.0,
              child: Icon(Icons.add,color: Colors.black,),)
        ),
        Container(
          height: 350.0,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder:(BuildContext context,int index){
              return  PageViewerChild(index: index+3);

            },
            itemCount: 3,

          ),
        ),Container(
          height: 170.0,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder:(BuildContext context,int index){
              return  PageViewerChild(index: index);

            },
            itemCount: 3,

          ),
        ),
      ]
    );
  }
}

class PageViewerChild extends StatefulWidget {

  final int index;

  const PageViewerChild({Key key, this.index}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PageViewerChild(index: index);
  }

}

class _PageViewerChild extends State<PageViewerChild> {

  List<Color> colorsForFirstList = [
    Colors.pink[400],
    Colors.yellow[400],
    Colors.blue[600],
    Colors.purple,
    Colors.blue[800],
    Colors.green[900],
    Colors.deepPurple[900],
    Colors.deepPurple[800],
    Colors.deepPurple[900],

  ];


 final int index;

  _PageViewerChild({this.index});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ClipRRect(
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70.0)),
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: colorsForFirstList[index],
      ),
    );
  }

}
