import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tasks/components/two_text.dart';
import 'package:tasks/widgets/mainButton.dart';
import 'package:tasks/widgets/text.dart';

class OnBoardingModel {
  String image;
  String title;
  String body;

  OnBoardingModel({
    required this.image,
    required this.title,
    required this.body,
  });
}

class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController();

  List<OnBoardingModel> data = [
    OnBoardingModel(
        image: 'assets/onBoarding_1.png',
        title: 'get food delivery to your doorstep asap',
        body:
            'we have young and professional delivery team that will bring your food as soon as possible to your doorstep'),
    OnBoardingModel(
        image: 'assets/onBoarding_2.png',
        title: 'get food delivery to your doorstep asap',
        body:
            'we have young and professional delivery team that will bring your food as soon as possible to your doorstep'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.yellow[50],
            ),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('login');
                },
              child: Text(
                'skip',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                text: '7',
                style: TextStyle(color: Colors.amberAccent),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Krave', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: PageView.builder(
                physics: BouncingScrollPhysics(),
                controller: pageController,
                itemCount: data.length,
                itemBuilder: (context, index) =>
                    buildOnBoardingItem(data[index]),
              ),
            ),
            SmoothPageIndicator(
                controller: pageController,  // PageController
                count:  data.length,
                effect:  ExpandingDotsEffect(
                  dotColor: Colors.grey,
                  dotHeight: 10,
                  expansionFactor: 4,
                  spacing: 4,
                  dotWidth: 10,
                  activeDotColor: Colors.teal,
                ),  // your preferred effect
                onDotClicked: (index){

                }
            ),
            SizedBox(
              height: 20,
            ),
            MainButton(
              text: 'Get started',
              callback: () {
                pageController.nextPage(
                    duration: Duration(
                      milliseconds: 750,
                    ), curve: Curves.fastLinearToSlowEaseIn);
              },
              textColor: Colors.white,
              radius: 10,
            ),
            TwoText(
                text1: 'Don\'n have an account?',
                text2: 'Sign Up',
                textColor1: Colors.black87,
                textColor2: Colors.teal,
                callback: () {Navigator.of(context).pushNamed('login');}),
          ],
        ),
      ),
    );
  }

  Widget buildOnBoardingItem(OnBoardingModel model) => Column(
        children: [
          Expanded(
            child: Image(
              image: AssetImage(model.image),
              width: double.infinity,
            ),
          ),
          MainText(
            text: model.title,
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.black87,
            maxLine: 2,
          ),
          SizedBox(
            height: 20,
          ),
          MainText(
            text: model.body,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
            maxLine: 3,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      );
}
