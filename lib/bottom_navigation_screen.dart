import 'package:flutter/material.dart';
import 'custom_paint_first_screen.dart';
import 'home_screen.dart';
import 'wave_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  BottomNavigationScreenState createState() => BottomNavigationScreenState();
}

class BottomNavigationScreenState extends State<BottomNavigationScreen> {
  var currentIndex = 0;
  List pagesList = [
    const CustomPaintFirstScreen(),
    const WaveScreen(),
    const HomeScreen(),
  ];

  List<IconData> iconsList = [
    Icons.perm_media_outlined,
    Icons.perm_media_outlined,
    Icons.perm_media_outlined
  ];

  List<String> titleList = [
    "Design 1",
    "Design 2",
    "Design 3"
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: pagesList[currentIndex],
      bottomNavigationBar: Container(
        height: size.width * .155,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.15),
              blurRadius: 30,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: size.width * .070),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(
                    () {
                  currentIndex = index;
                },
              );
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 1500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  margin: EdgeInsets.only(
                    bottom: index == currentIndex ? 0 : size.width * .029,
                    right: size.width * .0422,
                    left: size.width * .0422,
                  ),
                  width: size.width * .200,
                  height: index == currentIndex ? size.width * .014 : 0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(10),
                    ),
                  ),
                ),
                Icon(
                  iconsList[index],
                  size: size.width * .060,
                  color: index == currentIndex
                      ? Colors.blue
                      : Colors.black38,
                ),
                Text(titleList[index],
                  //style: index == currentIndex ? AppTextStyles.lightColouredTextStyle: AppTextStyles.lightGreyTextStyle,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}