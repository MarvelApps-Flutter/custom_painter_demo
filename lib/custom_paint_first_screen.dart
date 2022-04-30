import 'package:flutter/material.dart';

import 'custom_painter_first.dart';
import 'shadow_path.dart';

class CustomPaintFirstScreen extends StatefulWidget {
  const CustomPaintFirstScreen({Key? key}) : super(key: key);


  @override
  _CustomPaintFirstScreenState createState() => _CustomPaintFirstScreenState();
}

class _CustomPaintFirstScreenState extends State<CustomPaintFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //appBar: AppBar(title: Text("Custom Clipper"),),
        body: Container(
          child: Stack(
            children: [
              // Opacity(opacity: 0.3,
              //   child: CustomPaint(
              //     painter: RPSCustomPainter1(),
              //     size: Size(double.infinity,480),
              //     // child: Container(
              //     //   color: Colors.deepOrangeAccent,
              //     //   height: 340,
              //     // ),
              //   ),),
              // Opacity(opacity: 0.5,
              //   child: CustomPaint(
              //     painter: RPSCustomPainter1(),
              //     size: Size(double.infinity,450),
              //     // child: Container(
              //     //   color: Colors.deepOrangeAccent,
              //     //   height: 340,
              //     // ),
              //   ),),
              ClipShadowPath(
                  clipper: CircularClipper(),
                  shadow: Shadow(blurRadius: 20.0),
                  child: Container(
                    height: 380,
                    // decoration: BoxDecoration(
                    //   gradient: LinearGradient(
                    //       colors: [
                    //         const Color(0xFFca60f3),
                    //         const Color(0xFFaf4ff1),
                    //       ],
                    //       begin: const FractionalOffset(0.0, 0.0),
                    //       end: const FractionalOffset(1.0, 0.0),
                    //       stops: [0.0, 1.0],
                    //       tileMode: TileMode.clamp),
                    // ),
                   color: Colors.blue,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(25,8,8,8),
                            child: Icon(Icons.arrow_back,color: Colors.white,),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8,8,30,8),
                            child: Icon(Icons.menu,color: Colors.white,),
                          )
                        ],),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundImage: AssetImage("assets/images/user.png"),
                              ),
                              Column(
                                children: [
                                  Text("Marry" ,
                                    style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Rubik'
                              ),),
                                  Text("China Beijing",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Rubik'
                                    ),),

                                ],
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white
                                  ),
                                  onPressed: (){},
                                  child: Text("Follow",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Rubik'
                                    ),))
                              // Icon(Icons.arrow_back),
                              // Icon(Icons.menu)
                            ],),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,

                          children: [
                            SizedBox(width: 50,),
                          Column(children: [
                            Text("648",style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Rubik'
                            ),),
                            Text("Follow",style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Rubik'
                            ),),
                          ],),
                          Column(children: [
                            Text("7",style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Rubik'
                          ),),
                            Text("Bucket",style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Rubik'
                            ),),
                          ],),
                          //SizedBox(),
                          Column(children: [
                            Text("1046",style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Rubik'
                            ),),
                            Text("Followers",style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Rubik'
                            ),),
                          ],),
                        ],)
                      ],
                    ),
                  )

                // Image(
                //   height: 400.0,
                //   width: double.infinity,
                //   fit: BoxFit.cover,
                //   image: NetworkImage(widget.movie!.poster!),
                //
                // ),
              ),
              // CustomPaint(
              //   painter: RPSCustomPainter1(),
              //   size: Size(double.infinity,410),
              //
              //   // child: Container(
              //   //   color: Colors.deepOrangeAccent,
              //   //   height: 210,
              //   // ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
