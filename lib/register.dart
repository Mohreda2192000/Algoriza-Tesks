import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:tasks/components/two_text.dart';
import 'package:tasks/widgets/inputField.dart';
import 'package:tasks/widgets/mainButton.dart';

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
            Image.asset('assets/sign_up.png'),
            Container(
              alignment: AlignmentDirectional.topStart,
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to Fashion Daily',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),
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
                  IntlPhoneField(
                    decoration: InputDecoration(
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
                  MainButton(
                    text: 'Register',
                    textColor: Colors.white,
                    callback: () {},
                  ),
                  Text(
                    'Or',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 55,
                    color: Colors.grey,
                    child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: Image.asset('assets/google.png'),
                        label: Text('Sign with by google')),
                  ),
                  TwoText(
                    text1: 'Do you have any account ?',
                    text2: 'Lon in',
                    textColor1: Colors.grey,
                    textColor2: Colors.lightBlue,
                    callback: () {},
                  ),
                  Text(
                    'By registering your account ,you are agree to our',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
