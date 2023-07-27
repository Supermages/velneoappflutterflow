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
import 'dart:convert';
import 'dart:math';

// Set your widget name, define your parameter, and then add the
// boilerplate code using the button on the right!

import 'package:image_picker/image_picker.dart';

import 'package:path_provider/path_provider.dart';

const String exBase64 =
    "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";

const convertimagen = ConvertImages();
File? archivo;
String enCasoNull =
    "iVBORw0KGgoAAAANSUhEUgAAAP8AAADGCAMAAAAqo6adAAAALVBMVEXQ0NDw8PDU1NTW1tbv7+/b29vY2Njd3d3R0dHr6+vo6Oji4uLm5ubz8/Pj4+OXsBnXAAAE2klEQVR4nO2d23arMAxE65AGkjbn/z/3hHq1pYkvkixhC2keC+nSHo2BYHDe3kzr1LuAznJ+23J+23J+23J+23J+23J+23J+23J+23J+23J+23J+23J+23J+23J+23J+23J+23J+23J+23J+23J+22rjX6bLZVJtYUPxl3/nEO73EM63eeGraF+R+efrg/xb9/DBWdSOIvJPW/qombewnUTjn5/h1wx8Mpe2i0j880vzvwy4cRe3gyj8afyHFBpA4L9k6B8J0HcUJPCfs/whTPwVygrP/1HAD1eBEkWF5y/hh3ARqFFSaP7swS9K2yEQzX8t9/+u7EoYy7+Ujn4r/7tImWLC8k/l+AdtXwSw/KkrX80HAHZ+ZWdALH/x7G+A33r/32vHP2Xfgv34j1P1/K/sAhh9/Xer9F+iSEGh+SsHAGXDn/D9rzwAtN0AwPMXvwAqu/oj3f8pfQNUNxdEKPiUpb/rmwOgNCx3A/T+j708cZECmz4HaMQnzv9MiZOAwvC/kef/ls9n+qu2M18U+YA93bbzv2dlt71+1HDCWubP6zoOzrcPnb1f1XjCXh7iKaST1F2wMMv5bcv5bcv5bcv5bcv5bcv5bcv5bcv5bWtM/v3uKQ3Jf9lvGnVE/nV+aa/HKAbkj9NrOxkwHv/37OI+Q2A4/t/J1V0SMBr/dm55DwMG4/87tb7DEBiL//nJAvkEDMX/+mCFuAEj8aeeK5EeAgPxpx+rEU7AOPy5p4pkDRiGf8rgCw+BUfjzL9XKJmAQ/hK+qAFj8OfDLz0EhuAvd1/UgBH46/hyBgzAXwu/qAH9+SHdlzOgOz8UX8iA3vyw8MsZ0Jkf3n0hA/ry4/AlDOjKjwm/kAHM/Kh/h+2+hAG8/DPmUp2Cz24AK//6ahy4Pnz4JQzg5I9vBgITQOs+uwGM/N9LA4AMoHaf2wA+/t/3QgH1teCzGsDGv30ttpoAevi5DeDi/7suRsWAtu6zGsDE//xGZLG+dnw+A3j4X98JLySgNfysBrDwpxaFyRrA0X0+Azj4068DZ+rjwmcygIE/tyBCMgE84eczoJ0/vyJSwgC+7jMZ0MxfWg/lpT5efI7lJlr/Q3k5yKcEcOMzJKCRv7Yc2B8D+PHbDWjjr64Gtq1PAr95CDR9vLIW6pd+EiCD35qAFv7qWnhbA6TwGw1o4K+Hf1OfHH7bEKB/FhL+qIssflMC6L//gKlPFj+c6QZQ+aHhj/VVFg1sF7mNxA/Cw7+TqAng+/2LvqIOAcb1rzqL1knW37/oK1ICCPzjhT+KNATw/EOGP4qymOGB8ClDgH39667CDwEk/3tvwpqw/cTtP3T4o5AJQPEP3/2AHgIYfg34ATkEEDsrCH8UJgFwfiXdD7ghAObXg/8wAN5V6J5qwh8FNgC4o6burwIPARi/Nnz4EADtpiz8UTADIHvp6/4q2BAA8OvEBw6B+j4qwx8FMKC6i9burwIMgRq/ZnzIEKjsoDj8UTUDytt1d39VLQHFzfrxqwaUtqoPf1TRgMLGI3R/VTEB+W1HwS8bkN10kPBH5Q3IbTlO91flE5DZcCz8ggHpvx8q/FEZA5J/Plr3V2USkPrrfD+i0rfFU/yn5Yg6JQPQe/2D3nJ+23J+23J+23J+23J+23J+23J+23J+2zr9B+K1Q1EvhtkdAAAAAElFTkSuQmCC";

class ImagenGaleria3 extends StatefulWidget {
  const ImagenGaleria3({
    Key? key,
    this.width,
    this.height,
    required this.action,
    required this.imagenBase64,
    required this.id,
    required this.numeroDeImagen,
  }) : super(key: key);
  final Future<dynamic> Function() action;
  final double? width;
  final double? height;
  final String imagenBase64;
  final int id;
  final int numeroDeImagen;

  @override
  State<ImagenGaleria3> createState() => _ImagenGaleria3State();
}

class _ImagenGaleria3State extends State<ImagenGaleria3> {
  var imagenBase64Interna = null;
  int numeroDeImagenInterno = 0;
  int tempId_ = 0;
  @override
  void initState() {
    imagenBase64Interna = this.widget.imagenBase64;
    ponerImagen();
    super.initState();
  }

  @override
  void dispose() {
    archivo = null;
    numeroDeImagenInterno = 0;
    tempId_ = 0;
    super.dispose();
  }

  void ponerImagen() async {
    tempId_ = this.widget.id;
    numeroDeImagenInterno = this.widget.numeroDeImagen;
    archivo = await convertimagen.convertBase64File(
        imagenBase64Interna ?? enCasoNull,
        "imagen$tempId_$numeroDeImagenInterno.png");
    FFAppState().update(() {
      FFAppState().test = "$archivo" + imagenBase64Interna ?? enCasoNull;
    });
    setState(() {});
  }

  String selectedImagePath = "";
  String imagenPreFinal = "";

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 200,
      onPressed: () async {
        await selectImage();
        setState(() {});
      },
      icon: selectedImagePath.isEmpty
          ? Image.file(
              archivo!,
              fit: BoxFit.fill,
            )
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
            height: 100,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: const Text(
                    "Elige la imagen desde:",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        selectedImagePath = await selectImageFromGallery();
                        if (selectedImagePath.isNotEmpty) {
                          try {
                            FFAppState().update(() {
                              FFAppState().test = selectedImagePath;
                            });
                            Navigator.pop(context);
                            setState(() {});
                            // Convierte el archivo a Base64
                            //File file = File(selectedImagePath);
                            //log("PATATA:$file");
                          } catch (e) {
                            print("Error: $e");
                          }
                          imagenPreFinal ==
                              convertimagen
                                  .convertUbFileBase64(selectedImagePath);
                          await this.widget.action.call();
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
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.collections),
                              ),
                              Text("Galería"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        selectedImagePath = await selectImageFromCamera();
                        if (selectedImagePath.isNotEmpty) {
                          try {
                            FFAppState().test = selectedImagePath;
                            Navigator.pop(context);
                            setState(() {});
                          } catch (e) {
                            print("Error: $e");
                          }
                          imagenPreFinal ==
                              convertimagen
                                  .convertUbFileBase64(selectedImagePath);
                          await this.widget.action.call();
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
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.photo_camera),
                              ),
                              Text("Cámara"),
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
    return file?.path ?? "";
  }

  Future<String> selectImageFromCamera() async {
    final XFile? file = await ImagePicker().pickImage(
      source: ImageSource.camera,
      imageQuality: 10,
    );
    return file?.path ?? "";
  }
}

class ConvertImages {
  const ConvertImages();
  //esta classe convertira de base64 a file

  //convertir de file a base64
  //
  Future<File> convertBase64File(String txtBase64, String nombreArchivo) async {
    try {
      String directorio = (await getApplicationDocumentsDirectory()).path;
      File archivo = File("$directorio/$nombreArchivo");
      archivo.writeAsBytesSync(base64.decode(txtBase64));
      return archivo;
    } catch (e) {
      print("Error ${e.toString()}");
      return File("assets/icon/icon.png");
    }
  }

  Future<String> convertBase64UbFile(
      String txtBase64, String nombreArchivo) async {
    try {
      String directorio = (await getApplicationDocumentsDirectory()).path;
      String ub = "$directorio/$nombreArchivo";
      File archivo = File(ub);
      archivo.writeAsBytesSync(base64.decode(txtBase64));
      return ub;
    } catch (e) {
      print("Error ${e.toString()}");
      return "assets/icon/icon.png";
    }
  }

  String convertUbFileBase64(String ub) {
    try {
      print("${File(ub).readAsBytes()}");
      FFAppState().update(() {
        FFAppState().img = base64.encode(File(ub).readAsBytesSync());
      });
      return base64.encode(File(ub).readAsBytesSync());
    } catch (e) {
      print("Error ${e.toString()}");
      return exBase64;
    }
  }

  String convertFileBase64(File file) {
    try {
      print("${file.readAsBytes()}");
      return base64.encode(file.readAsBytesSync());
    } catch (e) {
      print("Error ${e.toString()}");
      return exBase64;
    }
  }
  //convertir una ubicación de file a
}
