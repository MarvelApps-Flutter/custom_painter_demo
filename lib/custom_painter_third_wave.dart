import 'package:flutter/material.dart';
  //class CustomPainterThirdWave extends CustomPainter{

class CustomPainterThirdWave extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = Colors.blue;


    Path path0 = Path();
    path0.moveTo(0,0);
    path0.quadraticBezierTo(size.width*-0.0316111,size.height*0.3760000,0,size.height*0.5314000);
    path0.cubicTo(size.width*0.0764722,size.height*0.4973500,size.width*0.1402222,size.height*0.6354000,size.width*0.1925278,size.height*0.6296250);
    path0.cubicTo(size.width*0.2388056,size.height*0.6389750,size.width*0.2905278,size.height*0.3817000,size.width*0.3758333,size.height*0.3827000);
    path0.cubicTo(size.width*0.4811111,size.height*0.3820000,size.width*0.5561667,size.height*0.5279500,size.width*0.6186389,size.height*0.5288500);
    path0.cubicTo(size.width*0.7271667,size.height*0.5299250,size.width*0.6347778,size.height*0.3748000,size.width*0.7545000,size.height*0.3741500);
    path0.cubicTo(size.width*0.8510000,size.height*0.3751000,size.width*0.8434444,size.height*0.4406250,size.width*0.9269167,size.height*0.4332250);
    path0.quadraticBezierTo(size.width*0.9999722,size.height*0.4356000,size.width,size.height*0.3775000);
    path0.lineTo(size.width,0);
    path0.lineTo(0,size.height*0.0033500);

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
