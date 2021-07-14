import 'package:flutter/material.dart';
import 'main.dart';

class Profile extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: Container(
        color: Colors.grey.shade900,
        child: Stack(
          children: <Widget> [
            Positioned(
              top: 0.0,
              child: Container(
                height: MediaQuery.of(context).size.height/3,
                width: MediaQuery.of(context).size.width,
                decoration: new BoxDecoration(
                  color: Colors.grey.shade900,
                  gradient: new LinearGradient(
                    colors: [Colors.black, Colors.grey.shade600],
                    ),
                ),
                ),
            ),
          Positioned(
              left: 0,
              right: 0,  
              top: 0,
              bottom: 250,
              child: Container(
                
                margin: EdgeInsets.all(50.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: new DecorationImage(image: AssetImage('assets/images/propic.jpeg'), fit: BoxFit.contain),
                    ),
                
              )
           )
            ],
        ),
      ),
    );
  }
}