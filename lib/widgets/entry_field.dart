import 'package:flutter/material.dart';
// Stateless widget CustomEntryField

class CustomEntryField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final bool isPassword; // default is false

  const CustomEntryField({
    Key? key,
    required this.hint,
    required this.controller,
    this.isPassword = false, // cannot be required since default is false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // container styling
      color: Colors.grey.shade200,
      padding: const EdgeInsets.symmetric(vertical: 15),
      // set border attributes
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.blue,
        ),
      ),
      // set textfield attributes
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hint,
          border: InputBorder.none,
          // set hint text styling
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
