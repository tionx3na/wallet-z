import 'package:flutter/material.dart';
import 'main.dart';

class Profile extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Text('Profile Page')),
      drawer: MyDrawer(),
    );
  }
}