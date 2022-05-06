import 'package:flutter/material.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';
import 'package:google_fonts/google_fonts.dart';
// Stateful Widget SignUp

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  // SignUp's State
  @override
  State<SignUp> createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  late TextEditingController _nameController; // cannot start with underscore
  late TextEditingController _emailController; // cannot start with underscore
  late TextEditingController
      _passwordController; // cannot start with underscore
  late TextEditingController _confirmController; // cannot start with underscore
  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    // init state
    super.initState();
    // set controllers
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmController = TextEditingController();
    // set state for form key
    _formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    // dispose controllers
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmController.dispose();
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(30),
        child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // set children as 4 entry fields and a flat button
                  CustomEntryField(
                    hint: 'Enter name',
                    controller: _nameController,
                  ),
                  CustomEntryField(
                    hint: 'Enter email',
                    controller: _emailController,
                  ),
                  CustomEntryField(
                    hint: 'Enter password',
                    controller: _passwordController,
                  ),
                  CustomEntryField(
                    hint: 'Confirm password',
                    controller: _confirmController,
                  ),
                  CustomFlatButton(
                    label: 'Sign up',
                    onPressed: () {},
                  ),
                  // end of children
                ],
              ),
            )),
      ),
    );
  }
}
