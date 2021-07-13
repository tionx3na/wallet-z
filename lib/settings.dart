import 'package:flutter/material.dart';
import 'main.dart';

class MySettings extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Text('Settings Page')),
      drawer: MyDrawer(),
    );
  }
}