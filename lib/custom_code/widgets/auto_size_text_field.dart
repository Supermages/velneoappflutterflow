// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import "package:auto_size_text/auto_size_text.dart";
import "package:google_fonts/google_fonts.dart";

class AutoSizeTextField extends StatefulWidget {
  const AutoSizeTextField({
    Key? key,
    this.width,
    this.height,
    this.text,
    this.lineasMaximas,
    this.isRight,
    required this.isDarkMode,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? text;
  final int? lineasMaximas;
  final bool? isRight;
  final bool isDarkMode;

  @override
  _AutoSizeTextFieldState createState() => _AutoSizeTextFieldState();
}

class _AutoSizeTextFieldState extends State<AutoSizeTextField> {
  @override
  Widget build(BuildContext context) {
    if (this.widget.isRight == true && this.widget.isDarkMode == false) {
      return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        AutoSizeText(
          "${this.widget.text}",
          maxLines: this.widget.lineasMaximas,
          style: GoogleFonts.readexPro(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ]);
    } else if (this.widget.isRight == true && this.widget.isDarkMode == true) {
      return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        AutoSizeText(
          "${this.widget.text}",
          maxLines: this.widget.lineasMaximas,
          style: GoogleFonts.readexPro(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ]);
    } else if (this.widget.isRight == false &&
        this.widget.isDarkMode == false) {
      return AutoSizeText(
        "${this.widget.text}",
        maxLines: this.widget.lineasMaximas,
        style: GoogleFonts.readexPro(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      );
    } else if (this.widget.isRight == false && this.widget.isDarkMode == true) {
      return AutoSizeText(
        "${this.widget.text}",
        maxLines: this.widget.lineasMaximas,
        style: GoogleFonts.readexPro(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      );
    } else {
      return Text("No se ha cargado nada");
    }
  }
}
