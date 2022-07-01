import 'package:flutter/material.dart';
import 'package:tasks/components/two_text.dart';
import 'package:tasks/widgets/mainButton.dart';

class BoardingModel {
  final String image;
  final String title;
  final String body;

  BoardingModel({
    required this.image,
    required this.title,
    required this.body,
  });
}

class OnBoarding extends StatefulWidget {
  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<BoardingModel> boarding = [
    BoardingModel(
        image: 'assets/images/onBoarding_1.png',
        title: ',,vmv',
        body: 'dlfl'),
    BoardingModel(
        image: 'assets/images/onBoarding_2.png',
        title: ',,vmv',
        body: 'dlfl'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: Text('skip'),
          )
        ],
      ),
      body: Column(
        children: [
          Text('7krave'),
          PageView.builder(
              itemCount: boarding.length,
              itemBuilder: (context, index) => buildBoardingItem(boarding[index])),
          Text('000'),
          MainButton(text: 'Get started', callback: () {}),
          TwoText(
              text1: 'Don\'t have account?',
              text2: 'Sign Up',
              textColor1: Colors.black,
              textColor2: Colors.blueAccent,
              callback: () {}),
        ],
      ),
    );
  }


  Widget buildBoardingItem(BoardingModel boardingModel) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(boardingModel.image),
          ),
          Text(
            boardingModel.title,
            style: TextStyle(
              fontSize: (40),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            boardingModel.body,
            style: TextStyle(
              fontSize: (25),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      );
}
