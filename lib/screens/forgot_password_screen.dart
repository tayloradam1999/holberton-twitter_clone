import 'package:flutter/material.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';
import 'package:google_fonts/google_fonts.dart';
// Stateful Widget ForgotPassword

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  // SignUp's State
  @override
  State<ForgotPassword> createState() => ForgotPasswordState();
}

class ForgotPasswordState extends State<ForgotPassword> {
  late TextEditingController _emailController;

  @override
  void initState() {
    // init state
    super.initState();
    // set controllers
    _emailController = TextEditingController();
  }

  @override
  void dispose() {
    // dispose controllers
    _emailController.dispose();
    // dispose state
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // build widget
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Theme.of(context).primaryColor,
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          '',
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
            children: [
              // set children as:
              // 1. Forgot Password text
              // 2. Extra forgot password text
              // 3. Email entry field
              // 4. Send button
              const SizedBox(height: 20),
              Text(
                'Forgot Password',
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontFamily: GoogleFonts.mulish().fontFamily,
                  fontWeight: FontWeight.w800,
                  fontSize: 22,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Enter your email address and we will send you a link to reset your password.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontFamily: GoogleFonts.mulish().fontFamily,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CustomEntryField(
                hint: 'Enter email',
                controller: _emailController,
              ),
              CustomFlatButton(
                label: 'Submit',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
