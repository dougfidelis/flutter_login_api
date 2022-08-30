import 'dart:ui';

import 'package:flutter/material.dart';

import 'sign_in_page.dart';

class SuccessfulPage extends StatelessWidget {
  const SuccessfulPage({Key? key}) : super(key: key);

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
                  'Your registration was successful!',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 80,
                ),
                Image.asset("assets/icons/check.png"),
                SizedBox(
                  height: 50,
                ),

                Text(
                  'Your registration was succesful \n and we have sent you \n a confirmation receipt to your \n email at:',
                  textAlign: TextAlign.center,
                  style: textGrey,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'email@email.com',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                      color: colorGrey),
                ),
                SizedBox(
                  height: 50,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SignInPage(),
                    ));
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
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
