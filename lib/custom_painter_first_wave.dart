import 'package:flutter/material.dart';
class CustomPainterFirstWave extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



  Paint paint0 = Paint()
  ..color = Colors.blue;


  Path path0 = Path();
  path0.moveTo(0,0);
  path0.quadraticBezierTo(size.width*-0.0025833,size.height*0.4735750,0,size.height*0.6242000);
  path0.cubicTo(size.width*0.0534722,size.height*0.5954500,size.width*0.0453611,size.height*0.5178750,size.width*0.1619722,size.height*0.4958250);
  path0.cubicTo(size.width*0.2547778,size.height*0.5017500,size.width*0.2562500,size.height*0.6090500,size.width*0.3750000,size.height*0.6200000);
  path0.cubicTo(size.width*0.4892500,size.height*0.6107250,size.width*0.4523056,size.height*0.5218250,size.width*0.5944444,size.height*0.5025000);
  path0.cubicTo(size.width*0.7056944,size.height*0.5175000,size.width*0.6485833,size.height*0.5841500,size.width*0.7620000,size.height*0.5991250);
  path0.cubicTo(size.width*0.8549444,size.height*0.5952750,size.width*0.9591111,size.height*0.5289750,size.width,size.height*0.5033500);
  path0.quadraticBezierTo(size.width*1.0049444,size.height*0.3821000,size.width,0);
  path0.lineTo(0,0);
  path0.close();

  canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
  return true;
  }

  }
