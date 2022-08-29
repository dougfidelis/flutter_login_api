import 'package:flutter/material.dart';
import 'package:flutter_back/sign_up_page.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(255, 75, 14, 136),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          //SignInButton.mini(buttonType: ButtonType.linkedin, onPressed: (){}),
          const Text(
            'Sign In',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(child: Icon(Icons.add)),
              SizedBox(
                width: 30,
              ),
              CircleAvatar(child: Icon(Icons.add)),
              SizedBox(
                width: 30,
              ),
              CircleAvatar(child: Icon(Icons.add)),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Text('or use your email account'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                label: Row(
                  children:const [Icon(Icons.email_outlined),
                     Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                
                label: Row(
                  children:const [Icon(Icons.lock_outlined),
                     Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          const Text('Forgout your password?'),
          ElevatedButton(child: const Text('Sign In'), onPressed: () {}),
          const Text('Enter your personal details '),
          const Text('and start journey with us '),
          TextButton(onPressed: () {Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => SignUpPage(),
          ),
        );
            
          }, child: Text('Sign Up')),
        ],
      ),
    );
  }
}
