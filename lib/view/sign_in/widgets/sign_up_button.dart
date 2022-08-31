
import 'package:flutter/material.dart';

import '../../sign_up/sign_up_page.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => SignUpPage(),
          ),
        );
      },
      child: const Text(
        'SIGN UP',
        style: TextStyle(
            decoration: TextDecoration.underline,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
    );
  }
}