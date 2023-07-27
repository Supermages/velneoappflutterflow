import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

List<dynamic> buscador(
  List<dynamic> jsonList,
  String? busqueda,
) {
  // Null o vacio check
  List<dynamic> jsonReturn = [];
  if (busqueda == null || busqueda == "") {
    for (dynamic item in jsonList) {
      if (item["ES_FIR"] == false && item["FCH"].startsWith("2023")) {
        jsonReturn.add(item);
      }
    }
    jsonList == [null];
    return jsonReturn;
  } else {
    // Filtra el contenido de JSON a jsonLists

    for (dynamic item in jsonList) {
      if (item["ES_FIR"] == false && item["FCH"].startsWith("2023")) {
        String _clt = "${item["CLT"]}".toLowerCase();
        String _num_pt = "${item["NUM_PT"]}";
        String _num_alb = "${item["NUM_ALB"]}";
        if (_clt.contains(busqueda.toLowerCase())) {
          jsonReturn.add(item);
        } else if (_num_pt.contains(busqueda)) {
          jsonReturn.add(item);
        } else if (_num_alb.contains(busqueda)) {
          jsonReturn.add(item);
        }
      }
    }
    // Devuelve el resultado
    return jsonReturn;
  }
}

int calculoPantalla(
  int restar,
  double screenHeight,
) {
  return screenHeight.toInt() - restar;
}
