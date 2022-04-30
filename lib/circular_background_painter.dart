import 'package:flutter/material.dart';
class CircularBackgroundPainter extends CustomClipper<Path>{
  // @override
  // void paint(Canvas canvas, Size size) {
    List<Offset> _extractPoints(String clipPath, Size size) {
      final points = List<Offset>.empty(growable: true);
//clipPath is the string we get from our path generator
      var tempString = clipPath.replaceAll("%", "");
      tempString = tempString.replaceAll(", ", ",");

      final pointStrings = tempString.split(",");

      for (final pointString in pointStrings) {
        final coord = pointString.split(" ");

        if (coord.length == 2) {
          points.add(
            Offset(
              (double.parse(coord[0]) * size.width / 100),
              (double.parse(coord[1]) * size.height / 100),
            ),
          );
        }
      }

      return points;
    }


    // @override
    // getClip(Size size) {
    //   final path = Path();
    //   final clipPath = "50% 0%, 78% 0, 100% 0, 100% 35%, 80% 44%, 54% 50%, 26% 53%, 0 54%, 0 0, 19% 0";
    //   final points = _extractPoints(clipPath, size);
    //   path.addPolygon(points, true);
    //   return path;
    // }
  //}

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // // TODO: implement shouldReclip
    // throw UnimplementedError();
    return false;
  }

  @override
  Path getClip(Size size) {
    final path = Path();
    final clipPath = "50% 0%, 78% 0, 100% 0, 100% 35%, 80% 44%, 54% 50%, 26% 53%, 0 54%, 0 0, 19% 0";
    final points = _extractPoints(clipPath, size);
    path.addPolygon(points, true);
    return path;
  }
}