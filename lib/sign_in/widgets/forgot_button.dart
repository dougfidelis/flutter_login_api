import 'package:flutter/material.dart';

import '../sign_in_page.dart';

class ForgotButton extends StatelessWidget {
  const ForgotButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        debugPrint('forgot');
      },
      child: Text(
        'Forgot your password?',
        style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: colorGrey),
      ),
    );
  }
}