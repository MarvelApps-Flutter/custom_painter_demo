import 'package:flutter/material.dart';
import 'package:flutter_custom_painter_apps/screens/custom_paint.dart';

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
        body: Container(
          child: Stack(
            children: [
              Opacity(opacity: 0.3,
                child: CustomPaint(
                  painter: RPSCustomPainter(),
                  size: Size(double.infinity,480),
                ),),
              Opacity(opacity: 0.5,
              child: CustomPaint(
                painter: RPSCustomPainter(),
                size: Size(double.infinity,450),
              ),),
              CustomPaint(
                painter: RPSCustomPainter(),
                size: Size(double.infinity,410),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
