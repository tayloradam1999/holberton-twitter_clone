import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// Stateless widget CustomFlatButton

class CustomFlatButton extends StatelessWidget {
  final String label;
  final Function onPressed;

  const CustomFlatButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // container styling
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Theme.of(context).primaryColor,
        // background color
      ),
      // set FlatButton attributes
      // ignore: deprecated_member_use
      child: FlatButton(
        // onPressed: onPressed, // no functionality yet, error thrown
        onPressed: () {},
        focusColor: Theme.of(context).primaryColorDark, // no Overlay color
        hoverColor: Theme.of(context).primaryColorDark, // no Overlay color
        splashColor: Theme.of(context).primaryColorDark, // no Overlay color
        child: Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontFamily: GoogleFonts.mulish().fontFamily,
            fontWeight: FontWeight.w800,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
