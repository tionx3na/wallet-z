import 'package:flutter/material.dart';
import 'main.dart';

class News extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Text('News Page')),
      drawer: MyDrawer(),
    );
  }
}