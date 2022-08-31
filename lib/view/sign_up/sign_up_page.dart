import 'package:flutter/material.dart';

import '../../model/user_model.dart';
import '../../repositories/user_repository.dart';
import '../sign_in/sign_in_page.dart';
import '../successful/successful_page.dart';
import '../widgets/email_form_field.dart';
import '../widgets/pass_form_field.dart';
import '../widgets/social_access_options.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var name = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  var confirmPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final bool isMobile = constraints.maxWidth < 600;
        return Scaffold(
          backgroundColor: purple,
          body: Center(
            child: SizedBox(
              width: isMobile ? MediaQuery.of(context).size.width * .8 : 600,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Create Account',
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const SocialAccessOptions(),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'or use your email account',
                      style: textGrey,
                    ),
                    NameFormField(
                      name: name,
                    ),
                    EmailFormField(
                      email: email,
                    ),
                    PassFormField(
                      password: password,
                    ),
                    ConfirmPassFormField(
                      confirmPass: confirmPass,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SignUpButton(
                      email: email,
                      password: password,
                      name: name,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'To keep connected with us please \n login with your personal info',
                      textAlign: TextAlign.center,
                      style: textGrey,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SignInPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'SIGN IN',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    Key? key,
    required this.email,
    required this.password,
    required this.name,
  }) : super(key: key);

  final TextEditingController email;
  final TextEditingController password;
  final TextEditingController name;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        UserModel user = UserModel(
            email: email.text, senha: password.text, nome: name.text, id: 0);
        var repo = UserRepository();
        repo.register(user);

        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const SuccessfulPage(),
        ));
      },
      color: Colors.white,
      minWidth: MediaQuery.of(context).size.width * .7,
      height: 45,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Text(
        'SIGN UP',
        style: TextStyle(
          fontSize: 22,
          color: purple,
        ),
      ),
    );
  }
}

class ConfirmPassFormField extends StatelessWidget {
  const ConfirmPassFormField({
    Key? key,
    required this.confirmPass,
  }) : super(key: key);

  final TextEditingController confirmPass;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: confirmPass,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          label: Row(
            children: [
              Image.asset(
                "assets/icons/pwd-icon.png",
                scale: 1,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Confirm Password',
                style: TextStyle(
                    fontSize: 22, fontWeight: FontWeight.w300, color: purple),
              ),
            ],
          ),
          filled: true,
          fillColor: Colors.white,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
      ),
    );
  }
}

class NameFormField extends StatelessWidget {
  const NameFormField({
    Key? key,
    required this.name,
  }) : super(key: key);

  final TextEditingController name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: name,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          label: Row(
            children: [
              Image.asset(
                "assets/icons/user-icon.png",
                scale: 1,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Name',
                style: TextStyle(
                    fontSize: 22, fontWeight: FontWeight.w300, color: purple),
              ),
            ],
          ),
          filled: true,
          fillColor: Colors.white,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
      ),
    );
  }
}
