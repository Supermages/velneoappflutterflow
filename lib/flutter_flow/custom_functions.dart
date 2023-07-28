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
  // Esta funcion da los ultimos 6 meses, incluyendo año.
  List<String> getLastSixMonths() {
    // Definimos variables.
    List<String> monthsList = [];
    var now = DateTime.now();

    // Esta variable le da el formato de año/mes a los resultados.
    String _formatMonth(DateTime date) {
      String month = date.month.toString().padLeft(2, '0');
      String year = date.year.toString();
      return '$year-$month'; // Formato: "2023-01" o "2023-12".
    }

    // Este es el encargado de dar los meses anteriores, aunque tambien incluye el del actual.
    for (int i = 5; i >= 0; i--) {
      var year = now.year;
      var month = now.month - i;

      if (month <= 0) {
        // Ajustamos el mes y el año si es menor o igual a cero.
        month += 12;
        year -= 1;
      }
      // Y este es para el mes actual.
      var currentMonth = DateTime(year, month);
      monthsList.add(_formatMonth(currentMonth));
    }
    // Devuelve el resultado.
    return monthsList;
  }

  // Definimos variables.
  List<String> months = getLastSixMonths();
  List<dynamic> jsonReturn = [];
  // Este es el encargado de la busqueda como tal.
  if (busqueda == null || busqueda == "") {
    // En caso de que este vacio, comprueba TODOS los items de detalles o albaranes, para estar seguros que son validos. Estos son validos si no estan firmados y estan dentro de los 6 meses anteriores.
    for (dynamic item in jsonList) {
      if (item["ES_FIR"] == false && item["FCH"].contains(months[0]) ||
          item["ES_FIR"] == false && item["FCH"].contains(months[1]) ||
          item["ES_FIR"] == false && item["FCH"].contains(months[2]) ||
          item["ES_FIR"] == false && item["FCH"].contains(months[3]) ||
          item["ES_FIR"] == false && item["FCH"].contains(months[4]) ||
          item["ES_FIR"] == false && item["FCH"].contains(months[5])) {
        jsonReturn.add(item);
      }
    }
    // Vacia el jsonlist, para futuros usos.
    jsonList == [null];
    // Y aqui, devuelve el resultado.
    return jsonReturn;
  } else {
    // En caso de que no este vacio, comprueba TODOS los items, para filtrarlos luego, para estar seguros que son validos. Estos son validos si no estan firmados y estan dentro de los 6 meses anteriores.

    for (dynamic item in jsonList) {
      if (item["ES_FIR"] == false && item["FCH"].contains(months[0]) ||
          item["ES_FIR"] == false && item["FCH"].contains(months[1]) ||
          item["ES_FIR"] == false && item["FCH"].contains(months[2]) ||
          item["ES_FIR"] == false && item["FCH"].contains(months[3]) ||
          item["ES_FIR"] == false && item["FCH"].contains(months[4]) ||
          item["ES_FIR"] == false && item["FCH"].contains(months[5])) {
        // Aqui se filtran los resultados, para comprobar si estan dentro de los parametros de la busqueda.
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

    // Vacia el jsonlist, para futuros usos.
    jsonList == [null];
    // Devuelve el resultado.
    return jsonReturn;
  }
}

int calculoPantalla(
  int restar,
  double screenHeight,
) {
  // Le resta una cantidad determinada a la altura de la pantalla en general
  return screenHeight.toInt() - restar;
}
