import 'package:flutter/material.dart';
import 'custom_painter_first_wave.dart';
import 'custom_painter_second_wave.dart';
import 'custom_painter_third_wave.dart';

class WaveScreen extends StatefulWidget {
  const WaveScreen({Key? key}) : super(key: key);


  @override
  _WaveScreenState createState() => _WaveScreenState();
}

class _WaveScreenState extends State<WaveScreen> {

  Size screenSize() {
    print("MediaQuery.of(context).size");
    print(MediaQuery.of(context).size);
    return MediaQuery.of(context).size;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //appBar: AppBar(title: Text("Wave Screen"),),
        body: Container(
          width: screenSize().width,
          height: screenSize().height,
          child: Stack(
            children: [
              Opacity(opacity: 0.3,
                child: CustomPaint(
                  painter: CustomPainterThirdWave(),
                  size: Size(double.infinity,480),
                  // child: Container(
                  //   color: Colors.deepOrangeAccent,
                  //   height: 340,
                  // ),
                ),),
              Opacity(opacity: 0.5,
                child: CustomPaint(
                  painter: CustomPainterSecondWave(),
                  size: Size(double.infinity,450),
                  // child: Container(
                  //   color: Colors.deepOrangeAccent,
                  //   height: 340,
                  // ),
                ),),
              CustomPaint(
                painter: CustomPainterFirstWave(),
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
