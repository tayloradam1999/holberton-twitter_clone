import 'package:flutter/material.dart';
import 'package:twitter/screens/signup_screen.dart';
import 'package:twitter/screens/forgot_password_screen.dart';
import 'package:twitter/screens/home_screen.dart';
import 'package:twitter/widgets/entry_field.dart';
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
              CustomEntryField(
                hint: 'Enter email',
                controller: _emailController,
              ),
              CustomEntryField(
                hint: 'Enter password',
                controller: _passwordController,
              ),
              // CustomFlatButton(
              //   onPressed: () {
              //     // on pressed
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => const HomeScreen(),
              //       ),
              //     );
              //   },
              //   label: 'Submit',
              // ),
              //
              // Since CustomFlatButton's onPressed has no functionality,
              // we will take copy the code from it's file and paste it here,
              // with functionality to navigate to the HomeScreen.
              //
              Container(
                margin: const EdgeInsets.all(15),
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                    minimumSize: MaterialStateProperty.all<Size>(
                      const Size.fromHeight(50),
                    ),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    overlayColor:
                        MaterialStateProperty.all<Color>(Colors.blue.shade800),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: GoogleFonts.mulish().fontFamily,
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5),
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
                margin: const EdgeInsets.all(5),
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
