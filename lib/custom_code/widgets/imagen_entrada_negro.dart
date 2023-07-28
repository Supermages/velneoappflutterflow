// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';

class ImagenEntradaNegro extends StatefulWidget {
  const ImagenEntradaNegro({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _ImagenEntradaNegroState createState() => _ImagenEntradaNegroState();
}

class _ImagenEntradaNegroState extends State<ImagenEntradaNegro> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Coloca una imagen segun el appstate de tempoImagenOscuro
        Image.file(
          File(FFAppState().tempoImagenOscuro),
          fit: BoxFit.fill,
          width: this.widget.width,
          height: this.widget.height,
        )
      ],
    );
  }
}
