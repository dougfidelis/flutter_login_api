import 'package:flutter/material.dart';

import '../sign_in/sign_in_page.dart';

class PassFormField extends StatelessWidget {
  const PassFormField({
    Key? key,
    required this.password,
  }) : super(key: key);

  final TextEditingController password;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
