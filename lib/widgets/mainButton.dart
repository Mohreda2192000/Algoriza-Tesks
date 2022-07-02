import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final Color textColor;
  final Color backColor;
  final double fontSize;
  final String text;
  final double width;
  final double radius;
  final Function callback;

  const MainButton({
    Key? key,
    this.textColor = Colors.black,
    this.fontSize = 15,
    required this.text,
    this.width = double.infinity,
    this.radius = 0,
    required this.callback,
    this.backColor=Colors.teal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backColor,
      ),
      child: MaterialButton(
        onPressed: () {callback;},
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
