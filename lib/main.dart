import 'package:flutter/material.dart';
import 'package:twitter/screens/signin_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter Clone',
      theme: ThemeData(
        primaryColor: Colors.blue,
        primaryColorDark: Colors.blue.shade800,
      ),
      home: const SignIn(),
    );
  }
}
