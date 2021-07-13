import 'package:flutter/material.dart';
import 'main.dart';

class AboutPage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Text('About Page')),
      drawer: MyDrawer(),
    );
  }
}