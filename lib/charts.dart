import 'package:flutter/material.dart';
import 'main.dart';

class Charts extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey1 = new GlobalKey<ScaffoldState>();
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey1,
      drawer: MyDrawer(),
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget> [
          Positioned(
            top: 0.0,
            bottom: MediaQuery.of(context).size.height/1.15,
            left: 0.0,
            right: 0.0,
            child: Container(
              color: Colors.grey.shade900,
              height: MediaQuery.of(context).size.height/7,
              child: Row(
                children: <Widget> [
                  IconButton(onPressed: () { _scaffoldKey1.currentState?.openDrawer();}, icon: Icon(Icons.menu), color: Colors.white, ),
                  Padding(
                    padding: EdgeInsets.only(left: 90.0, right: 5.0),
                    child: Text("WALLET-Z", style: TextStyle(color: Colors.grey, fontSize: 20.0, fontWeight: FontWeight.bold,)),
                  )
                ]
              )
            )
          ),

          Positioned(
            top: MediaQuery.of(context).size.height/7.5,
            bottom:0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              color: Colors.black,
               height: MediaQuery.of(context).size.height/2,
               child: ListView(
                      children: [
                        Divider(),
                        chartItem(Icons.account_balance, "BTC", 410.80,
                        0.0036, "82.19(92%)"),
                        Divider(),
                        chartItem(Icons.account_balance, "BTC", 410.80,
                        0.0036, "82.19(92%)"),
                        Divider(),
                        chartItem(Icons.account_balance, "BTC", 410.80,
                        0.0036, "82.19(92%)"),
                        Divider(),
                        chartItem(Icons.account_balance, "BTC", 410.80,
                        0.0036, "82.19(92%)"),
                        Divider(),
                        chartItem(Icons.account_balance, "BTC", 410.80,
                        0.0036, "82.19(92%)"),
                        Divider(),
                        chartItem(Icons.account_balance, "BTC", 410.80,
                        0.0036, "82.19(92%)"),
                        Divider(),
                        chartItem(Icons.account_balance, "BTC", 410.80,
                        0.0036, "82.19(92%)"),
                        Divider(),
                        chartItem(Icons.account_balance, "BTC", 410.80,
                        0.0036, "82.19(92%)"),
                        Divider(),
                        chartItem(Icons.account_balance, "BTC", 410.80,
                        0.0036, "82.19(92%)"),
                        Divider(),
                        chartItem(Icons.account_balance, "BTC", 410.80,
                        0.0036, "82.19(92%)"),
                        Divider(),
                        chartItem(Icons.account_balance, "BTC", 410.80,
                        0.0036, "82.19(92%)"),
                        Divider(),
                        chartItem(Icons.account_balance, "BTC", 410.80,
                        0.0036, "82.19(92%)"),
                        Divider(),
                        chartItem(Icons.account_balance, "BTC", 410.80,
                        0.0036, "82.19(92%)"),
                        Divider(),
                        chartItem(Icons.account_balance, "BTC", 410.80,
                        0.0036, "82.19(92%)"),
                        Divider(),
                        chartItem(Icons.account_balance, "BTC", 410.80,
                        0.0036, "82.19(92%)"),
                        Divider(),
                        chartItem(Icons.account_balance, "BTC", 410.80,
                        0.0036, "82.19(92%)"),
                        Divider(),
                        chartItem(Icons.account_balance, "BTC", 410.80,
                        0.0036, "82.19(92%)"),
                        Divider(),
                      ]
            
            )
          )
          )
        ],
      ),
    );
  }
}


chartItem(IconData icon, String name, double amount, double rate,
            String percentage) =>
        Card(
          elevation: 1.0,
          child: InkWell(
            onTap: () => print("tapped"),
            child: Container(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0, right: 15.0),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(22.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 15.0),
                    child: Icon(icon, color: Colors.grey),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              name,
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.orange),
                            ),
                            Text("\$$amount",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("$rate BTC",
                                style: TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white)),
                            Text("+ \$$percentage",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.red[500],
                                ))
                          ],
                        )
                      ],
                    ),
                    flex: 3,
                  ),
                ],
              ),
            ),
          ),
        );
