import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final int maxLine;
  const MainText({
    Key? key,
    required this.text,
    this.fontSize = 15,
    required this.fontWeight,
    this.color = Colors.black,
     this.maxLine=1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      maxLines: maxLine,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
