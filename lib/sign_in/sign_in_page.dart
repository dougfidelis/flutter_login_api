import 'package:flutter/material.dart';

import 'widgets/email_form_field.dart';
import 'widgets/forgot_button.dart';
import 'widgets/pass_form_field.dart';
import 'widgets/sign_in_button.dart';
import 'widgets/sign_up_button.dart';
import 'widgets/social_access_options.dart';

var colorGrey = const Color.fromARGB(255, 172, 172, 173);
var purple = const Color.fromARGB(255, 75, 14, 136);
var textGrey =
    TextStyle(color: colorGrey, fontSize: 20, fontWeight: FontWeight.w400);

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final bool isMobile = constraints.maxWidth < 600;
      return Scaffold(
      backgroundColor: purple,
      body: Center(
        child: SizedBox(
          width: isMobile ? MediaQuery.of(context).size.width * .8 : 600,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 30),
                const Text('Sign In',
                    style: TextStyle(fontSize: 40, color: Colors.white)),
                const SizedBox(height: 30),
                const SocialAccessOptions(),
                const SizedBox(height: 30),
                Text('or use your email account', style: textGrey),
                EmailFormField(email: email),
                PassFormField(password: password),
                const SizedBox(height: 10),
                const ForgotButton(),
                const SizedBox(height: 50),
                SignInButton(email: email, password: password),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Enter your personal details and start journey with us',
                    textAlign: TextAlign.center,
                    style: textGrey,
                  ),
                ),
                const SignUpButton(),
              ],
            ),
          ),
        ),
      ),
    );
    },);
  }
}
