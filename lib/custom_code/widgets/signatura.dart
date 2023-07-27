// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:google_fonts/google_fonts.dart';

// DO NOT REMOVE OR MODIFY THE CODE ABOVE!//Importaciones:
//Lo he puesto asi "//" por si haces copiar i pegar
//syncfusion_flutter_signaturepad: ^22.1.36
//flutter_const: ^0.0.7
//open_file: ^3.3.2

//Codigo:

import 'package:path_provider/path_provider.dart';
import 'dart:ui' as ui;
import 'dart:io' as io;
// import 'dart:html';
import 'dart:async';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:convert';
import 'dart:typed_data';
import 'package:open_file/open_file.dart';

const String exBase64 =
    'iVBORw0KGgoAAAANSUhEUgAAAGAAAABgCAYAAADimHc4AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAJM0lEQVR4nO2dT3AbVx3Hvz+tJMey5ThJwwE6jA8cGEjSuGplq3FAlWW7gVyg4wuHHOnkz5EDJ2JfaAeOJEO4cGAGLtwo1HYsGXXyx7FSE4e0M7SnFjjFie1YkR3J2v1xkDZRjJ19u/ve7ibZz83S29/76ft9v7fa3ecnICQkJCQkJCQkJCTkZYNkBeIT3+p4WD/wIzByRNwPoA9Ab+vtNQa+AKjIhMvJ1cYCLS5uyerbDyr5wSwZxgRHUEoWyhNO48gzAKCN4YELDD4j0LwC4FKjFn+/9+rVVVk5eIEpPAjfN19jwqRTE6QZANg2ASCswqBfdhmdF6hUeiQzF9nsJHw7Tk2QagDgwIRmGmVDb/ywp7R4T3Y+brESvh0nJkg3AGiZkEtfZMJp8YPoX5GoMZq4fPM/KnKyix3h27FrghIDAIcmAP/VODrUOXf9K1V5WeFU+HbsmBBx2okVBHDiePkcMX5r47BXdWr8ns+ry2s3KvnB7MNcukRs/N2N+ABAjPOVfHpCqK2bjkTg84hsXElfsFMJDDqXLC5cVJmXiYwRvxsilaB8pNEkjMTx8jkmXBI+Bvyrzexgn8K0nvQlYcTvGttA1qqNJ6VOkzC6j5XP2jAhoWv6T5Um5QEciUxYtbE0gMe/E2cJU5V9E+gUj49rbvv1DcbHycKNklUzSwMeriR/vDH85m9kmQDmu4LNv1Fd+XLEbZ9+ITL6AZEpiJFj0FkZJlTy6QkC/UK0PYPeddOfbwiOfkDAgNaNNbg1oZJPTxDjvJ1jCPy6k778RnT0A2In4b7HgUFnm7cZ7JngRPwm1GfRIHjYGP2AmAG97X8w+IwdE5yLDwDY5/A437Az+gExA/j/X+AzG7n0RSsTXIoPAIaLYy0RvVoVxuboB8QMeLBjX4TTzzJBgvgAsOzy+F2RlN9T2B39gMh1APDFru+ZJmy7dyPtwzE+dx1jB1SI72T0A0IVQMVn9ks4vXElfcE0QeqHIyxIidOGEvHhbPQDAifS9fzAUIT5imUChEtgvmvne74ljE+5YyuXnLolZSpSJT4YH3fPlbNODrU0gFOpWLVXuw8g6aQD10gyQZn4AJgibzuZfgCRC7Hm6gXhO5nSIRyiWmyucqL/oNMQKsV3OvebCN0NbdTi74Pg3+oFwiGqR4tOTFAqPpzP/SbCV7QPcwM/A/Gv3XTmHr7D8caw6HRUHU6/xy6q181yE1GEnwd0GZ0XACqrTMYaOkz1aHE9m3pFpHUjqv0ZwC0nPXkhPmDzns56NvVKJBK9AuJvq0pIDL5j6EZOZBnLg7HMfq2hFwD0C0f3SHzAwZ3NjXzqmwZr1wC8qiAfG6gxwUvxAQePJBOFxX9rHB0CMKcgHxvQ4YimCU1He2fmV/SolofFdOS1+IDDZ8Kdc9e/6hoqjzDoHIANyTnZ4YgsE/wQH5DwmHEzO9inR/g9kHEKoK/LSMoBtw1dzzudjvwSH5C5Onp8XKuufDnCoHebT7KoD8B+ADqAZTA+B2EBjB+AcEhWv23cNoDhnmL5vlXDdhP8FB/wYGHWdiqjb32NGo1iEEyINvTxrmL5dwryEMZzAwCgcqL/INVic36bEAR8MQAITTDxfBGsSXLq1jJ3bOXA+FRB+NciQGF9OH1AQWyp+FYBJpUT/QepHi0CdFhB+CUDyAe5EnyrAJPk1K1ljjeGAb6jIPzRCDD7YCyzX0FsKfheASaKK+GWHtXye2fmVxTEdkVgDABaN/u0yNzLZILvU1A7PaXFe4Zu5AD8U0H4fq2hF4I2HQWqAkyalaAVARxRED5QlRCoCjBpVoI+DGWV0AjMiTmQBgBPmXBbfnR6PSgmBNYA4LEJeSg0YW1oyNcFwL4ZwJlM50o+tdeqXU9p8Z4BKKuEaEet4KcJvhjAmUxnNWH8Jc5aYTV7tNeqfU+xfP9FNcHzb0GcyXRWO/UPQRhuvfTJll4f2VdaWrM6dn04fSACFAG8piC1xUYtPuL17i2eVsAO4gPAGzEtPmuzEpYUpJeKdtQ9Pyd4VgF8MpWobmofAsjt0sRuJRQAHJWaZCuPRi0+6lUleGKAgPgmdk2YhY31PjYQzsMtyqeglvh/hbX4gM3pSGSpiUOE83CL0gpoE/9tm4cKj0AnK99U5OEUdfsFnUwlqpuRvwGUdRjipTBBzY5ZJ1OJ6ob2kYRdSIJiws0tvT6qwgTp5wAePdIlSXzAxlz8ZOUb/0NCv9t5M6bFL6s4J8jdNXH0SFdV3/MRgO/JjAvbldCYBUjBNgdU3tJrYzIrQVoFKBQf2OGfxXejWQnRETWVwOmY1jEjsxKkVEBL/CkAx2XE24aj+XdtaGhftKNWUFUJdWqM7i8s7vhP7HZwXQF3s9luleLXSXf0DaT36tXVRq0jD2BRflqcjnP0ssjdXCtcVcDdbLa7S9uYYmDIbSI7cLNO+ojbUdashPosgJSkvNpwXwmOK+B5EB8wKyE+AlWVAG3GTSU4MkCt+FSWJb5JmwmfyIr5GMaAGxNsG7B87FiyK7I5rU58OSe37bRMGIUiE2KsTTsxwdY5YPnYseSePVvTBLxltyOBVJSJ385q9mhvTIvPAnhDdmwGbmyR/o6dzyBcAUrFJyx4IT4A7CstrW3pdSXTEQGDMdam758Y6BE9RsgA5eJDH/NCfJM2E27Kjk3AYLzOM6ImWG/YlMl0qhS/FiNPRv52WiaMQp0J03wylbBqa2lANaFPqhT/wNTCuvTYgig2IVN9FJm0aicyBZ2SkM/TBEB8kycmKNgHg8lSOxEDHO/TsxMM3AiK+CZNE2pjCkyw1E7AAP5MRiZAU/x6nMaCJL7JvtLSWp0aciuBYamdtQFEH8jJJbjim+wvLD6QagKxpXaWBnQXyn9iguXJ5FkwMB908U1kmcCEye7izT9atRO+Ena69VdL/HeeB/HbWcmn9sahzYAxYPdYO9sfKN2E+3kV38SJCcp/xkrUBAbmHz2KjR28dq1it48gsZJP7Y2xNk3AoFVbz37IzcqEF0V8ExETnO664uh5QLJQniDGjp0xcP1FEh9onZjjNMbA/E7v+/Zjng/z6Z+A+ecAfRfNnc7/0LWhnaf5+U03cYMKn0wlqo8ik60r3INgfAbiD0S+7YSEhISEhISEhISEhJj8DwLA9vK9pp/OAAAAAElFTkSuQmCC';

class Signatura extends StatefulWidget {
  const Signatura({
    Key? key,
    this.width,
    this.height,
    required this.volverAXLugar,
  }) : super(key: key);
  final Future<dynamic> Function() volverAXLugar;
  final double? width;
  final double? height;

  @override
  _SignaturaState createState() => _SignaturaState();
}

class _SignaturaState extends State<Signatura> {
  final GlobalKey<SfSignaturePadState> _signaturePadStateKey = GlobalKey();
  Offset offsetValue = const Offset(0, 0);
  final metodo = const ConvertImages();
  var imagenDefinitiva = "";
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.585,
          child: SfSignaturePad(
            key: _signaturePadStateKey,
            backgroundColor: Colors.white,
            strokeColor: Colors.black,
            minimumStrokeWidth: 2.5,
            maximumStrokeWidth: 3.0,
            onDraw: (offset, time) {
              offsetValue = offset;
            },
          ),
        ),
      ),
      Spacer(),
      Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: ElevatedButton.icon(
                onPressed: () async {
                  //thereIsSignature = false;
                  offsetValue = const Offset(0, 0);
                  _signaturePadStateKey.currentState!.clear();
                },
                label: Text(
                  'Borrar',
                  style: GoogleFonts.readexPro(
                    color: Colors.white,
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                icon: const Icon(
                  Icons.delete,
                  size: 24.0,
                ),
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(Size(150, 50)),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: ElevatedButton.icon(
                onPressed: () async {
                  if (offsetValue == Offset.zero) {
                    showErrorDialog(
                      context,
                      "Debes poner tu firma para continuar.",
                    );
                  } else {
                    await convertirImagen(
                        context, _signaturePadStateKey, metodo);
                    await this.widget.volverAXLugar.call();
                  }
                },
                label: Text(
                  'Firmar y guardar',
                  style: GoogleFonts.readexPro(
                    color: Colors.white,
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                icon: const Icon(
                  Icons.image,
                  size: 24.0,
                ),
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(Size(150, 50)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromRGBO(55, 48, 232, 100)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ]);
  }

  Future<void> showErrorDialog(
    BuildContext context,
    String text,
  ) {
    return showGenericDialogOneOption<void>(
      context: context,
      title: 'Error',
      content: text,
      optionsBuilder: () => {
        'Aceptar': null,
      },
    );
  }

  Future convertirImagen(context, signaturePadStateKey, metodo) async {
    ui.Image image =
        await signaturePadStateKey.currentState!.toImage(pixelRatio: 2.0);
    final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    //TODO poner las lineas comentadas que tengan que ver con imageBytes descomentadas y solucionar imageBytes
    //comprobar si esta vacio o no
    final Uint8List imageBytes = byteData!.buffer
        .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes);
    final String path = (await getApplicationSupportDirectory()).path;
    final String fileName = '$path/Firma.png';
    final io.File file = io.File(fileName);
    await file.writeAsBytes(imageBytes, flush: true);
    imagenDefinitiva = ConvertImages().convertUbFileBase64(fileName);
    setState(() => FFAppState().img = imagenDefinitiva);
    ;
  }

  Future<T?> showGenericDialogOneOption<T>({
    required BuildContext context,
    required String title,
    required String content,
    required DialogOptionBuilder optionsBuilder,
  }) {
    final options = optionsBuilder();
    return showDialog<T>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: options.keys.map((optionTitle) {
            final value = options[optionTitle];
            return ElevatedButton.icon(
              icon: const Icon(Icons.check),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
              ),
              onPressed: () {
                Navigator.of(context).pop(value);
              },
              label: Text(optionTitle),
            );
          }).toList(),
        );
      },
    );
  }
}

typedef DialogOptionBuilder<T> = Map<String, T?> Function();

class ConvertImages {
  const ConvertImages();
  //esta classe convertira de base64 a file

  //convertir de file a base64
  //
  Future<io.File> convertBase64File(
      String txtBase64, String nombreArchivo) async {
    try {
      String directorio = (await getApplicationDocumentsDirectory()).path;
      io.File archivo = io.File('$directorio/$nombreArchivo');
      archivo.writeAsBytesSync(base64.decode(txtBase64));
      return archivo;
    } catch (e) {
      return io.File('assets/icon/icon.png');
    }
  }

  Future<String> convertBase64UbFile(
      String txtBase64, String nombreArchivo) async {
    try {
      String directorio = (await getApplicationDocumentsDirectory()).path;
      String ub = '$directorio/$nombreArchivo';
      io.File archivo = io.File(ub);
      archivo.writeAsBytesSync(base64.decode(txtBase64));
      return ub;
    } catch (e) {
      return "assets/icon/icon.png";
    }
  }

  String convertUbFileBase64(String ub) {
    try {
      return base64.encode(io.File(ub).readAsBytesSync());
    } catch (e) {
      return exBase64;
    }
  }

  String convertFileBase64(io.File file) {
    try {
      return base64.encode(file.readAsBytesSync());
    } catch (e) {
      return exBase64;
    }
  }
  //convertir una ubicación de file a
}
