import 'package:flutter/material.dart';
import 'package:flutter_back/sign_up_page.dart';

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
    return Scaffold(
      backgroundColor: purple,
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .8,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text('Sign In',
                    style: TextStyle(fontSize: 40, color: Colors.white)),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('linkedin');
                      },
                      child: Image.asset("assets/icons/linkedin-icon.png",
                          scale: .85),
                    ),
                    const SizedBox(width: 30),
                    GestureDetector(
                        onTap: () {
                          print('google');
                        },
                        child: Image.asset("assets/icons/google-icon.png",
                            scale: .85)),
                    const SizedBox(width: 30),
                    GestureDetector(
                      onTap: () {
                        print('github');
                      },
                      child: Image.asset("assets/icons/Git.png", scale: 1.1),
                    )
                  ],
                ),
                const SizedBox(height: 30),
                Text('or use your email account', style: textGrey),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      label: Row(
                        children: [
                          Image.asset("assets/icons/email-icon.png", scale: 1),
                          SizedBox(width: 10),
                          Text(
                            'Email',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w300,
                                color: purple),
                          )
                        ],
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: password,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      label: Row(
                        children: [
                          Image.asset(
                            "assets/icons/pwd-icon.png",
                            scale: 1,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Password',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w300,
                                color: purple),
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
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    print('forgot');
                  },
                  child: Text(
                    'Forgot your password?',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: colorGrey),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                MaterialButton(
                  onPressed: () {
                    print("${email.text} ${password.text}");
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
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Enter your personal details \n and start journey with us',
                  textAlign: TextAlign.center,
                  style: textGrey,
                ),
                TextButton(
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
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
