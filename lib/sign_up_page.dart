import 'package:flutter/material.dart';
import 'package:flutter_back/sign_in_page.dart';
import 'package:flutter_back/successful_page.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPass = TextEditingController();

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
                //SignInButton.mini(buttonType: ButtonType.linkedin, onPressed: (){}),
                const Text(
                  'Create Account',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('linkedin');
                      },
                      child: Image.asset(
                        "assets/icons/linkedin-icon.png",
                        scale: .85,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        print('google');
                      },
                      child: Image.asset(
                        "assets/icons/google-icon.png",
                        scale: .85,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        print('github');
                      },
                      child: Image.asset(
                        "assets/icons/Git.png",
                        scale: 1.1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'or use your email account',
                  style: textGrey,
                ),

                Padding(
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
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Name',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w300,
                                color: purple),
                          ),
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
                    controller: email,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      label: Row(
                        children: [
                          Image.asset(
                            "assets/icons/email-icon.png",
                            scale: 1,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Email',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w300,
                                color: purple),
                          ),
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
                          SizedBox(
                            width: 10,
                          ),
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
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                  ),
                ),
                Padding(
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
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Confirm Password',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w300,
                                color: purple),
                          ),
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
                SizedBox(
                  height: 20,
                ),

                MaterialButton(
                  onPressed: () {
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
