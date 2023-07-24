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

// Set your widget name, define your parameter, and then add the
// boilerplate code using the button on the right!

import 'package:image_picker/image_picker.dart';

class ImagenGaleria extends StatefulWidget {
  const ImagenGaleria({
    Key? key,
    this.width,
    this.height,
    required this.action,
  }) : super(key: key);
  final Future<dynamic> Function() action;
  final double? width;
  final double? height;

  @override
  State<ImagenGaleria> createState() => _ImagenGaleriaState();
}

class _ImagenGaleriaState extends State<ImagenGaleria> {
  String selectedImagePath = '';

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 200,
      onPressed: () async {
        await selectImage();
        setState(() {});
      },
      icon: selectedImagePath.isEmpty
          ? const Icon(Icons.photo)
          : Image.file(
              File(selectedImagePath),
              fit: BoxFit.fill,
            ),
    );
  }

  Future<void> selectImage() async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          content: SizedBox(
            height: 150,
            child: Column(
              children: [
                const Text(
                  'Elige la imagen de:',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        selectedImagePath = await selectImageFromGallery();
                        if (selectedImagePath.isNotEmpty) {
                          try {
                            Navigator.pop(context);
                            setState(() {});
                            // Convierte el archivo a Base64
                            //File file = File(selectedImagePath);

                            //log("PATATA:$file");
                          } catch (e) {
                            print('Error: $e');
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Elige la imagen de:")),
                          );
                        }
                      },
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text('Galería'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        selectedImagePath = await selectImageFromCamera();
                        if (selectedImagePath.isNotEmpty) {
                          Navigator.pop(context);
                          setState(() {});
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text(
                                    "¡No se ha seleccionado o capturado una imagen!")),
                          );
                        }
                      },
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text('Cámara'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<String> selectImageFromGallery() async {
    final XFile? file = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      imageQuality: 10,
    );
    return file?.path ?? '';
  }

  Future<String> selectImageFromCamera() async {
    final XFile? file = await ImagePicker().pickImage(
      source: ImageSource.camera,
      imageQuality: 10,
    );
    return file?.path ?? '';
  }
}
