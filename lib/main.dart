import 'package:flutter/material.dart';
import 'package:flutter_back/sign_in_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter com c#',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: SignInPage(),
    );
  }
}
