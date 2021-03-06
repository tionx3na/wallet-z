import 'package:flutter/material.dart';
import 'main.dart';

class News extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey1 = new GlobalKey<ScaffoldState>();
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey1,
      drawer: MyDrawer(),
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0.0,
            bottom: MediaQuery.of(context).size.height/1.15,
            left: 0.0,
            right: 0.0,
            child: Container(
              color: Colors.grey.shade900,
              height: MediaQuery.of(context).size.height/7,
              child: Row(
                children: <Widget> [
                  IconButton(onPressed: () { _scaffoldKey1.currentState?.openDrawer();}, icon: Icon(Icons.menu), color: Colors.white, ),
                  Padding(
                    padding: EdgeInsets.only(left: 90.0, right: 5.0),
                    child: Text("WALLET-Z", style: TextStyle(color: Colors.grey, fontSize: 20.0, fontWeight: FontWeight.bold,)),
                  )
                ]
              )
            )
          ),

          Positioned(
            top: MediaQuery.of(context).size.height/7.5,
            bottom: MediaQuery.of(context).size.height/2,
            left: 0.0,
            right: 0.0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 24.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
              Container(  
                width: MediaQuery.of(context).size.width/1.2,
                color: Colors.red,
                child: Text(
                  "Image holder",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
              ),
              
              Container(
                width: MediaQuery.of(context).size.width/1.2,
                color: Colors.blue,
                 child: Text(
                  "Image holder",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width/1.2,
                color: Colors.green,
                 child: Text(
                  "Image holder",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width/1.2,
                color: Colors.yellow,
                 child: Text(
                  "Image holder",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width/1.2,
                color: Colors.orange,
                 child: Text(
                  "Image holder",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
              ),
                ],
              ),
            )
          ),
        
        Positioned(
          top: MediaQuery.of(context).size.height/2,
          bottom:  0.0,
          left: 0.0,
          right: 0.0,
          child: Container(
            child: ListView(
              children: <Widget>[
                for (int i=1; i<50; i++)
                  Container(
                    color: Colors.cyan,
                    child: Text("News ${i}"),
                  ),

              ],),
          )
        )


        ],
      )
    );
  }
}

