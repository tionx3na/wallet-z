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
          children: [
            Container(
              height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width,
              decoration: new BoxDecoration(
                color: Colors.grey.shade900,
                gradient: new LinearGradient(
                  colors: [Colors.grey, Colors.grey.shade900],
                  ),
              ),
              child: Container(
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  image: new DecorationImage(image: AssetImage('images/propic.jpeg')),
                  ),
                ),
              ),

            Container(
              
            )
          ],
        ),
      ),
    );
  }
}