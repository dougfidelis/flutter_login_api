import 'package:flutter/material.dart';

class SocialAccessOptions extends StatelessWidget {
  const SocialAccessOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            debugPrint('linkedin');
          },
          child: Image.asset("assets/icons/linkedin-icon.png",
              scale: .85),
        ),
        const SizedBox(width: 30),
        GestureDetector(
            onTap: () {
              debugPrint('google');
            },
            child: Image.asset("assets/icons/google-icon.png",
                scale: .85)),
        const SizedBox(width: 30),
        GestureDetector(
          onTap: () {
            debugPrint('github');
          },
          child: Image.asset("assets/icons/Git.png", scale: 1.1),
        )
      ],
    );
  }
}