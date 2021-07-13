// Wallet-Z application provides a safe and fast method to store and transact the cryptocurrencies in a mobile platform.abstract
// Author - Arun Xena

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'top_bar.dart';
import 'currencies.dart';
import 'profile.dart';
import 'charts.dart';
import 'news.dart';
import 'settings.dart';
import 'about.dart';


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
      drawer: MyDrawer(),
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

class MyDrawer extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            color: Colors.black,
            child:  ListView(
               padding: EdgeInsets.zero,
            children: <Widget> [
            _createHeader(),
            Divider(),
            _createDrawerItem(icon: Icons.verified_user_rounded ,text: 'My Profile',onTap: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => new Profile())) ),
            Divider(),        
            _createDrawerItem(icon: Icons.account_box ,text: 'Portfolio', onTap: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => new Wallet()))),
            Divider(),
             _createDrawerItem(icon: Icons.bar_chart ,text: 'Charts', onTap: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => new Charts()))),
             Divider( ),
             _createDrawerItem(icon: Icons.table_chart ,text: 'News', onTap: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => new News()))),
             Divider(),
            _createDrawerItem(icon: Icons.settings ,text: 'Settings', onTap: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => new MySettings()))),
            Divider(),
             _createDrawerItem(icon: Icons.people ,text: 'About', onTap: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => new AboutPage()))),
             Divider(),
             ListTile(
               title: Text("Created by:     Arun Xena",
               style: TextStyle(color: Colors.orange, fontSize: 12.0,)),
               )
            
          ],
            )
        ),
      );
  }
}

Widget _createHeader() {
  return DrawerHeader(
    margin: EdgeInsets.zero,
    padding: EdgeInsets.zero,
    decoration: BoxDecoration(
      color: Colors.grey.shade900,
    ),
    child: Stack(
      children: <Widget> [
        Positioned(
          bottom: 12.0,
          left: 16.0,
          child: Text("Wallet-Z",
          style: TextStyle(
            color: Colors.white,
            fontSize: 35.0,
            fontWeight: FontWeight.w500
          ))
        )
      ],
    ),
  );
}


Widget _createDrawerItem({required IconData icon, required String text, GestureTapCallback? onTap}) {
  return ListTile(
    tileColor: Colors.grey.shade800,
    title: Row(
      children: <Widget> [
        Icon(icon, color: Colors.grey,),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(text,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
          ),),
          )
      ],),
      onTap: onTap,
  );
}
