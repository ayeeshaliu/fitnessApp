import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String title;
  final FontWeight fontWeight;
  final String family;
  final double size;
  final FontStyle fontStyle;
  final double letterSpacing;
  final Color color;

  MyText({this.title, this.fontWeight, this.family, this.size, this.fontStyle, this.letterSpacing, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$title",
      style: TextStyle(
        fontFamily: "$family" ?? "Inter",
        fontSize: size ?? 13,
        fontWeight: fontWeight ?? FontWeight.w700,
        fontStyle: fontStyle ?? FontStyle.normal,
        letterSpacing: letterSpacing?? 0.2,
        color: color?? Color(0xFF3E4958),
      ),
    );
  }
}
