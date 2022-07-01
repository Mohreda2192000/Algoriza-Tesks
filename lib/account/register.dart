import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:tasks/components/two_text.dart';
import 'package:tasks/widgets/inputField.dart';
import 'package:tasks/widgets/mainButton.dart';
import 'package:tasks/widgets/text.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/images/sign_up.png'),
              ],
            ),
            Container(
              padding: const EdgeInsetsDirectional.all(20),
              child: Column(
                children: [
                  const MainText(
                    text: 'Welcome to Fashion Daily',
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const MainText(
                    text: 'Register',
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                  const SizedBox(
                    height: 20,
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
                    height: 20,
                  ),
                  IntlPhoneField(
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                    initialCountryCode: 'EG',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
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
                    height: 20,
                  ),
                  MainButton(
                    text: 'Register',
                    textColor: Colors.white,
                    callback: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const MainText(
                    text: 'Or',
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 55,
                    child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: Image.asset('assets/images/google.png'),
                        label: const Text('Sign up with by google')),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TwoText(
                    text1: 'Do you have any account ?',
                    text2: 'Lon in',
                    textColor1: Colors.grey,
                    textColor2: Colors.lightBlue,
                    callback: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const MainText(
                    text: 'By registering your account ,you are agree to our',
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
