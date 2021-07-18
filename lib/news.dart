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
        ],
      )
    );
  }
}