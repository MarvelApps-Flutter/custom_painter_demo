import 'package:flutter/material.dart';
import 'package:flutter_custom_painter_apps/circular_background_painter.dart';
import 'package:flutter_custom_painter_apps/custom_paint.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       // appBar: AppBar(title: Text("Custom Clipper"),),
        body: Container(
          child: Stack(
            children: [
              Opacity(opacity: 0.3,
                child: CustomPaint(
                  painter: RPSCustomPainter(),
                  size: Size(double.infinity,480),
                  // child: Container(
                  //   color: Colors.deepOrangeAccent,
                  //   height: 340,
                  // ),
                ),),
              Opacity(opacity: 0.5,
              child: CustomPaint(
                painter: RPSCustomPainter(),
                size: Size(double.infinity,450),
                // child: Container(
                //   color: Colors.deepOrangeAccent,
                //   height: 340,
                // ),
              ),),
              CustomPaint(
                painter: RPSCustomPainter(),
                size: Size(double.infinity,410),
                // child: Container(
                //   color: Colors.deepOrangeAccent,
                //   height: 210,
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
