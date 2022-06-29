import 'package:flutter/material.dart';
//class CustomPainterSecondWave extends CustomPainter{

  //class CustomPainterSecondWave extends CustomPainter{

class CustomPainterSecondWave extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = Colors.blue;


    Path path0 = Path();
    path0.moveTo(0,0);
    path0.lineTo(0,size.height*0.4273750);
    path0.quadraticBezierTo(size.width*0.0656111,size.height*0.5056000,size.width*0.1194167,size.height*0.5215750);
    path0.cubicTo(size.width*0.1694444,size.height*0.5145500,size.width*0.1655556,size.height*0.4468750,size.width*0.2471389,size.height*0.4432000);
    path0.cubicTo(size.width*0.3461111,size.height*0.4435000,size.width*0.3955833,size.height*0.6211500,size.width*0.5020000,size.height*0.6264750);
    path0.cubicTo(size.width*0.5749722,size.height*0.6285000,size.width*0.5744444,size.height*0.4521750,size.width*0.6844722,size.height*0.4509000);
    path0.cubicTo(size.width*0.8005556,size.height*0.4455250,size.width*0.7321667,size.height*0.6017500,size.width*0.8316111,size.height*0.6014250);
    path0.cubicTo(size.width*0.9249722,size.height*0.6005500,size.width*0.9670833,size.height*0.5068500,size.width,size.height*0.4557500);
    path0.quadraticBezierTo(size.width*1.0058889,size.height*0.3338750,size.width,0);
    path0.lineTo(0,0);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
