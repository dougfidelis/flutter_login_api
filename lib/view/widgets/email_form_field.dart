import 'package:flutter/material.dart';

import '../sign_in/sign_in_page.dart';

class EmailFormField extends StatelessWidget {
  const EmailFormField({
    Key? key,
    required this.email,
  }) : super(key: key);

  final TextEditingController email;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        
        controller: email,
        decoration: InputDecoration(
          errorText: "email",
          floatingLabelBehavior: FloatingLabelBehavior.never,
          label: Row(
            children: [
              Image.asset("assets/icons/email-icon.png", scale: 1),
              const SizedBox(width: 10),
              Text(
                'Email',
                style: TextStyle(
                    fontSize: 22, fontWeight: FontWeight.w300, color: purple),
              )
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
