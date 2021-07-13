import 'package:flutter/material.dart';
import 'main.dart';

class Charts extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Text('Charts Page')),
      drawer: MyDrawer(),
    );
  }
}