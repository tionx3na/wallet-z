// Defines the Top Bar colors and designs of the portfolio

import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return CustomPaint(
       child: Container(
         padding: EdgeInsets.all(10.0),
         height: MediaQuery.of(context).size.height/2,
         width: MediaQuery.of(context).size.width,
         child: Column(
           children: <Widget>[
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onPressed: () => { Scaffold.of(context).openDrawer() },
                  ),
                  Text(
                    "PORTFOLIO",
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                  IconButton(
                    icon: Icon(
                      Icons.account_balance,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  )
               ],
             ),
             SizedBox(height:40),
             Text(
               r"$ 43,729.00",
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 45.0,
                 fontWeight: FontWeight.bold,
               ),
             ),
           ]
           ),
       ),
       painter: CurvePainter(),
    );
  }
}

class CurvePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
  Path path = Path();
  Paint paint = Paint();


  path.lineTo(0, size.height *0.75);
  path.quadraticBezierTo(size.width* 0.10, size.height*0.70,   size.width*0.17, size.height*0.90);
  path.quadraticBezierTo(size.width*0.20, size.height, size.width*0.25, size.height*0.90);
  path.quadraticBezierTo(size.width*0.40, size.height*0.40, size.width*0.50, size.height*0.70);
  
  path.quadraticBezierTo(size.width*0.70, size.height*0.90, size.width, 0);

  path.close();

  paint.color = Colors.grey.shade400;
  canvas.drawPath(path, paint);

  path = Path();
  path.lineTo(0, size.height*0.50);
  path.quadraticBezierTo(size.width*0.10, size.height*0.80, size.width*0.15, size.height*0.60);
  path.quadraticBezierTo(size.width*0.20, size.height*0.45, size.width*0.27, size.height*0.60);
  path.quadraticBezierTo(size.width*0.45, size.height, size.width*0.50, size.height*0.80);
  path.quadraticBezierTo(size.width*0.55, size.height*0.45, size.width*0.75, size.height*0.75);
  path.quadraticBezierTo(size.width*0.85, size.height*0.93, size.width, size.height*0.60);
  path.lineTo(size.width, 0);
  path.close();

  paint.color = Colors.grey.shade700;
  canvas.drawPath(path, paint);

  path =Path();
  path.lineTo(0, size.height*0.75);
  path.quadraticBezierTo(size.width*0.10, size.height*0.55, size.width*0.22, size.height*0.70);
  path.quadraticBezierTo(size.width*0.30, size.height*0.90, size.width*0.40, size.height*0.75);
  path.quadraticBezierTo(size.width*0.52, size.height*0.50, size.width*0.65, size.height*0.70);
  path.quadraticBezierTo(size.width*0.75, size.height*0.85, size.width, size.height*0.60);
  path.lineTo(size.width, 0);
  path.close();

  paint.color = Colors.grey.shade900;
  canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }

}

