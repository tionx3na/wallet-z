// Wallet-Z application provides a safe and fast method to store and transact the cryptocurrencies in a mobile platform.abstract
// Author - Arun Xena

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'top_bar.dart';
import 'currencies.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallet-Z',
      home: Wallet(),
    );
  }
}

class Wallet extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
             child: TopBar(),
          ),
          Container(
              child: Currencies()
                  )
        ]
      )
      );
  }
}



