// Wallet-Z application provides a safe and fast method to store and transact the cryptocurrencies in a mobile platform.abstract
// Author - Arun Xena

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'top_bar.dart';
import 'currencies.dart';
import 'routes.dart';


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
      drawer: new Drawer(
        child: Container(
            color: Colors.black,
            child:  ListView(
               padding: EdgeInsets.zero,
            children: <Widget> [
            _createHeader(),
            Divider(),
            _createDrawerItem(icon: Icons.verified_user_rounded ,text: 'My Profile',onTap: () => Navigator.pushReplacementNamed(context, Routes.profile)),
            Divider(),        
            _createDrawerItem(icon: Icons.account_box ,text: 'Portfolio',),
            Divider(),
             _createDrawerItem(icon: Icons.bar_chart ,text: 'Charts',),
             Divider( ),
             _createDrawerItem(icon: Icons.table_chart ,text: 'News',),
             Divider(),
            _createDrawerItem(icon: Icons.settings ,text: 'Settings',),
            Divider(),
             _createDrawerItem(icon: Icons.people ,text: 'About',),
             Divider(),
             ListTile(
               title: Text("Created by:     Arun Xena",
               style: TextStyle(color: Colors.orange, fontSize: 12.0,)),
               )
            
          ],
            )
        ),
      ),
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


class ProfilePage extends StatelessWidget {
  static const String routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Events"),
        ),
        drawer: Wallet(),
        body: Center(child: Text("Events")));
  }
}