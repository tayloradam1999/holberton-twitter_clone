import 'package:flutter/material.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'dart:convert';
// Stateful Widget SignIn

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  // SignIn's State
  @override
  State<SignIn> createState() => SignInState();
}

class SignInState extends State<SignIn> {
  late TextEditingController emailController; // cannot start with underscore
  late TextEditingController passwordController; // cannot start with underscore

  @override
  void initState() {
    // init state
    super.initState();
    // set controllers
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    // dispose controllers
    emailController.dispose();
    passwordController.dispose();
    // dispose state
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // build widget
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Sign In',
          style: TextStyle(
            color: const Color.fromARGB(255, 0, 0, 0),
            fontFamily: GoogleFonts.mulish().fontFamily,
            fontWeight: FontWeight.w800,
            fontSize: 22,
          ),
        ),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // set children as 2 entry fields and a flat button
              CustomEntryField(
                hint: 'Enter email',
                controller: emailController,
              ),
              CustomEntryField(
                hint: 'Enter password',
                controller: passwordController,
              ),
              CustomFlatButton(
                label: 'Submit',
                onPressed: () {},
              ),
              // 2 more children - sign up and forgot password
              Container(
                margin: const EdgeInsets.all(15),
                child: TextButton(
                  // navigates to SignUp screen
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => SignUp(),
                    //   ),
                    // );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.blue,
                      fontFamily: GoogleFonts.mulish().fontFamily,
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: Colors.blue,
                      fontFamily: GoogleFonts.mulish().fontFamily,
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
