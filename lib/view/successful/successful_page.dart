import 'package:flutter/material.dart';

import '../sign_in/sign_in_page.dart';

class SuccessfulPage extends StatelessWidget {
  SuccessfulPage({Key? key, required this.email}) : super(key: key);
  final String email;
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
              children: [
                const SizedBox(
                  height: 30,
                ),
                //SignInButton.mini(buttonType: ButtonType.linkedin, onPressed: (){}),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Your registration was successful!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                        ),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Image.asset("assets/icons/check.png"),
                const SizedBox(
                  height: 50,
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Your registration was succesful and we have sent you a confirmation receipt to your email at:',
                    textAlign: TextAlign.center,
                    style: textGrey,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(email
                  ,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                      color: colorGrey),
                ),
                const SizedBox(
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
    },);
  }
}
