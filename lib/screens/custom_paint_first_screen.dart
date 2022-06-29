import 'package:flutter/material.dart';
import '../shadow_path.dart';

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
        body: Container(
          child: Stack(
            children: [
              ClipShadowPath(
                  clipper: CircularClipper(),
                  shadow: Shadow(blurRadius: 20.0),
                  child: Container(
                    height: 380,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
