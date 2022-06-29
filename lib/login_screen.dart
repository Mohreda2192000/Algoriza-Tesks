import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/image.png'),
            Container(
              alignment: AlignmentDirectional.topStart,
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  Text('Welcome to Fashion Daily',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                  Text('Sign in',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),
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
                  Container(
                    width: double.infinity,
                    height: 55,
                    color: Colors.blueAccent,
                    child: ElevatedButton(
                      onPressed: (){},
                      child: Text('Log in'),),
                  ),
                  Text('Or',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 55,
                    child: OutlinedButton.icon(onPressed: (){},
                        icon: Image.asset('assets/google.png'),
                        label: Text('Sign with by google')),
                  ),
                  Row(
                    children: [
                      Text('Doesn\'t has any account?',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey,
                        ),
                      ),
                      Text('Register here',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize:17,
                          color: Colors.lightBlue,
                        ),
                      ),
                    ],
                  ),
                  Text('Use the app according to policy rules.Any kinds of violations will be subject to sanctions',
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
    );
  }
}
