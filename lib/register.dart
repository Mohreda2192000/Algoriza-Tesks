import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/sign_up.png'),
          Container(
            alignment: AlignmentDirectional.topStart,
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome to Fashion Daily',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                Text('Register',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Email',
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
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 55,
                  color: Colors.blueAccent,
                  child: ElevatedButton(
                    onPressed: (){},
                    child: const Text('RegiSter'),),
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
                    Text('Has any account?',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey,
                      ),
                    ),
                    Text('Sign in here',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize:17,
                        color: Colors.lightBlue,
                      ),
                    ),
                  ],
                ),
                Text('By registering your account ,you are agree to our',
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
