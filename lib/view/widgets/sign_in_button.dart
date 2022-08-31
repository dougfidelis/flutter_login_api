import 'package:flutter/material.dart';

import '../sign_in/sign_in_page.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    Key? key,
    required this.email,
    required this.password,
  }) : super(key: key);

  final TextEditingController email;
  final TextEditingController password;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        debugPrint("${email.text} ${password.text}");
      },
      color: Colors.white,
      minWidth: MediaQuery.of(context).size.width * .7,
      height: 45,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Text(
        'SIGN IN',
        style: TextStyle(
          fontSize: 22,
          color: purple,
        ),
      ),
    );
  }
}
