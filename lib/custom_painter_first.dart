import 'package:flutter/material.dart';
class RPSCustomPainter1 extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = Colors.blue;


    Path path0 = Path();
    path0.moveTo(0,size.height*0.0016750);
    path0.lineTo(0,size.height*0.4966750);
    path0.quadraticBezierTo(size.width*0.6290400,size.height*0.5890500,size.width*0.7779467,size.height*0.5835500);
    path0.quadraticBezierTo(size.width*0.8780267,size.height*0.5646000,size.width,size.height*0.4591750);
    path0.quadraticBezierTo(size.width,size.height*0.1147937,size.width,0);
    path0.quadraticBezierTo(size.width*0.7500000,size.height*0.0004188,0,size.height*0.0016750);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
