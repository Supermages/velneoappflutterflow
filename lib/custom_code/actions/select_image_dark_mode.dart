// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:image_picker/image_picker.dart';

String result = "ejemplo";

Future<String> selectImageDarkMode() async {
  final XFile? file = await ImagePicker().pickImage(
    source: ImageSource.gallery,
    imageQuality: 10,
  );
  FFAppState().update(() {
    FFAppState().tempoImagenOscuro = file?.path ?? "";
  });
  return file?.path ?? '';
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
