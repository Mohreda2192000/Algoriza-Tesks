import 'package:flutter/material.dart';
class MainText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  const MainText({Key? key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        'Tex',
        style: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 15,
          color: Colors.black,
        ),
      ),
    );
  }
}
