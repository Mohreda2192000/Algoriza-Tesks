import 'package:flutter/material.dart';
import 'package:tasks/widgets/inputField.dart';
import 'package:tasks/widgets/mainButton.dart';
import 'package:tasks/widgets/text.dart';

import '../components/two_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/image.png'),
              Container(
                padding: const EdgeInsetsDirectional.all(20),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const MainText(text: 'Welcome to Fashion Daily',fontWeight: FontWeight.normal,color: Colors.grey,),
                    const SizedBox(
                      height: 20,
                    ),
                    const MainText(text: 'Sign in',fontWeight: FontWeight.bold,fontSize: 30,),
                    const SizedBox(
                      height: 10,
                    ),
                    InputField(
                      text: 'Email Address',
                      inputType: TextInputType.emailAddress,
                      onChanged: () {},
                      onSubmitted: () {},
                      controller: emailController,
                      prefixIcon: Icons.email_outlined,
                      isPrefixIcon: true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InputField(
                      text: 'Password',
                      inputType: TextInputType.visiblePassword,
                      onChanged: () {},
                      onSubmitted: () {},
                      controller: passwordController,
                      prefixIcon: Icons.lock,
                      isPrefixIcon: true,
                      suffixIcon: Icons.remove_red_eye_outlined,
                      isSuffixIcon: true,
                      isPassword: true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    MainButton(
                      text: 'Sign in',
                      textColor: Colors.white,
                      callback: () {},
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    MainText(text: 'Or',fontWeight: FontWeight.normal,color: Colors.grey,),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      height: 55,
                      child: OutlinedButton.icon(onPressed: (){},
                          icon: Image.asset('assets/google.png'),
                          label: const Text('Sign in with by google')),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TwoText(
                      text1: 'Doesn\'t has any account?',
                      text2: 'Register here',
                      textColor1: Colors.grey,
                      textColor2: Colors.lightBlue,
                      callback: () {},
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const MainText(text: 'Use the app according to policy rules.Any kinds of violations will be subject to sanctions',fontWeight: FontWeight.normal,color: Colors.grey,),
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}
