import 'package:flutter/material.dart';
import 'package:twitter/screens/signup_screen.dart';
import 'package:twitter/screens/forgot_password_screen.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';
import 'package:google_fonts/google_fonts.dart';
// Stateful Widget SignIn

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  // SignIn's State
  @override
  State<SignIn> createState() => SignInState();
}

class SignInState extends State<SignIn> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    // init state
    super.initState();
    // set controllers
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    // dispose controllers
    _emailController.dispose();
    _passwordController.dispose();
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
                controller: _emailController,
              ),
              CustomEntryField(
                hint: 'Enter password',
                controller: _passwordController,
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUp(),
                      ),
                    );
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
                  // navigates to ForgotPassword screen
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgotPassword(),
                      ),
                    );
                  },
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
