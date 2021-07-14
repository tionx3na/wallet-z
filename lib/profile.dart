import 'package:flutter/material.dart';
import 'main.dart';
import 'currencies.dart';

class Profile extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: Container(
        color: Colors.grey.shade900,
        child: Stack(
          children: <Widget> [
            Positioned(
              top: 0.0,
              child: Container(
                height: MediaQuery.of(context).size.height/3,
                width: MediaQuery.of(context).size.width,
                decoration: new BoxDecoration(
                  color: Colors.grey.shade900,
                  gradient: new LinearGradient(
                    colors: [Colors.black, Colors.grey.shade600],
                    ),
                ),
                ),
            ),

          Positioned(
              left: 0,
              right: 0,  
              top: 0,
              bottom: 300,
              child: Container(
                
                margin: EdgeInsets.all(50.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: new DecorationImage(image: AssetImage('assets/images/propic.jpeg'), fit: BoxFit.contain),
                    ),  
              )
           ),

          Positioned(        
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height/1.1,
              width: MediaQuery.of(context).size.width,
              child: Center( 
               child: Text("ARUN BABU", style: TextStyle(color: Colors.grey.shade600, fontSize: 50,),),
              )
            ),
          ),
         
         DraggableScrollableSheet(
        initialChildSize: 0.4,
        minChildSize: 0.4,
        maxChildSize: 0.6,
        builder: (BuildContext context, myscrollController) {
          return Container(
             color: Colors.black38,
             child: Container(
               height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView(      
                  controller: myscrollController,
                  children: <Widget>[
                    userPortfolio(Icons.verified_user, "NAME:", "Arun Babu",),
                    userPortfolio(Icons.verified_user, "USERNAME:", "@1runx3na",),
                    userPortfolio(Icons.verified_user, "TOTAL:", r"$ 400",),
                    userPortfolio(Icons.verified_user, "SIGN IN:", r"30/04/2021",),
                   
                  ],
                )
             ),
          );
        },
         )
         
         ],
          ),
        ),
    );
  }
}

userPortfolio(IconData icon, String divname, String div) =>
        Card(
          elevation: 1.0,
          child: InkWell(
            onTap: () => print("tapped"),
            child: Container(
              height: 100.0,
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0, right: 15.0),
              decoration: BoxDecoration(
                  color: Colors.black,
                 ),
              child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 5.0, right: 10.0),
                              child: Icon(icon, color: Colors.green),
                            ),

                            Padding(
                             padding: EdgeInsets.only(left: 5.0, right: 5.0), 
                             child: Text(
                                divname,
                                style: TextStyle(
                                    fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.orange),
                              ),
                            ),
                            
                            Padding(
                              padding: EdgeInsets.only(left: 5.0, right: 5.0), 
                              child: Text(div,
                              
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))
                            )
                          ],
                        ),

                        Divider(height: 10.0,)
                       
                      ],
             
                    ),
            ),
          ),
        );






