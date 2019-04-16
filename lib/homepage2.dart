import 'package:flutter/material.dart';

class Home extends StatefulWidget {

 final  Color color = Colors.pink;

  const Home({Key key,color}):super(key:key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Color color = Colors.pink;

  _HomeState({this.color});


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius:BorderRadius.only(bottomLeft: Radius.circular(70.0)),
          child: Container(
            height: 600.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.purple[900],
          ),
        ),
        ClipRRect(
          borderRadius:BorderRadius.only(bottomLeft: Radius.circular(70.0)),
          child: Container(
            height: 450.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.purple[700],
          ),
        ),
        ClipRRect(
          borderRadius:BorderRadius.only(bottomLeft: Radius.circular(70.0)),
          child: Container(
            height: 300.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.pink[200],
          ),
        ),

      ],
    );
  }
}
class home2 extends StatefulWidget {
  @override
  _home2State createState() => _home2State();
}

class _home2State extends State<home2> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius:BorderRadius.only(bottomLeft: Radius.circular(70.0)),
          child: Container(
            height: 600.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.green[900],
          ),
        ),
        ClipRRect(
          borderRadius:BorderRadius.only(bottomLeft: Radius.circular(70.0)),
          child: Container(
            height: 450.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.lightGreen[700],
          ),
        ),
        ClipRRect(
          borderRadius:BorderRadius.only(bottomLeft: Radius.circular(70.0)),
          child: Container(
            height: 300.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.lightGreen[300],
          ),
        ),

      ],
    );
  }
}
class home3 extends StatefulWidget {
  @override
  _home3State createState() => _home3State();
}

class _home3State extends State<home3> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius:BorderRadius.only(bottomLeft: Radius.circular(70.0)),
          child: Container(
            height: 600.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue[900],
          ),
        ),
        ClipRRect(
          borderRadius:BorderRadius.only(bottomLeft: Radius.circular(70.0)),
          child: Container(
            height: 450.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.lightBlue[700],
          ),
        ),
        ClipRRect(
          borderRadius:BorderRadius.only(bottomLeft: Radius.circular(70.0)),
          child: Container(
            height: 300.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.lightBlue[200],
          ),
        ),

      ],
    );
  }
}

