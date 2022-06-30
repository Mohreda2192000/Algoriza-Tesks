import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final Color textColor;
  final Color backColor;
  final double fontSize;
  final String text;
  final double width;
  final double radius;
  final VoidCallback callback;

  const MainButton({
    Key? key,
    this.textColor = Colors.black,
    this.fontSize = 15,
    required this.text,
    this.width = double.infinity,
    this.radius = 0,
    required this.callback,
    this.backColor=Colors.lightBlue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        color: backColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: ElevatedButton(
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
