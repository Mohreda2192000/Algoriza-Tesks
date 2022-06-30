import 'package:flutter/material.dart';

class TwoText extends StatelessWidget {
  final String text1;
  final String text2;
  final Color textColor1;
  final Color textColor2;
  final double fontSize;
  final VoidCallback callback;
   const TwoText({
    Key? key,
    required this.text1,
    required this.text2,
    required this.textColor1,
    required this.textColor2,
    this.fontSize = 15.0,
    required this.callback,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          maxLines: 1,
          style: TextStyle(
            color: textColor1,
            fontSize: fontSize,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        TextButton(
            onPressed: () {callback;},
            child: Text(
              text2,
              maxLines: 1,
              style: TextStyle(
                color: textColor2,
                fontSize: fontSize,
              ),
            ))
      ],
    );
  }
}
