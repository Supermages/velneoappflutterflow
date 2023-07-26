import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class DetalleDePartesCall {
  static Future<ApiCallResponse> call({
    int? id = 70,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Detalle de partes',
      apiUrl: 'https://vmodapache2.scalecloud.net/rubiconbase/DET_API_PRT',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'ID': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic detalleParte(dynamic response) => getJsonField(
        response,
        r'''$.DetPrt''',
        true,
      );
  static dynamic averiaTarea(dynamic response) => getJsonField(
        response,
        r'''$.DetPrt[:].AVE_TAR''',
      );
  static dynamic copiaSeguridad(dynamic response) => getJsonField(
        response,
        r'''$.DetPrt[:].BAK''',
      );
  static dynamic buscar(dynamic response) => getJsonField(
        response,
        r'''$.DetPrt[:].CHK_BUS_IPH''',
      );
  static dynamic cliente(dynamic response) => getJsonField(
        response,
        r'''$.DetPrt[:].CLT''',
      );
  static dynamic comercial(dynamic response) => getJsonField(
        response,
        r'''$.DetPrt[:].CMR''',
      );
  static dynamic descripcion(dynamic response) => getJsonField(
        response,
        r'''$.DetPrt[:].DSC''',
      );
  static dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.DetPrt[:].EML''',
      );
  static dynamic estado(dynamic response) => getJsonField(
        response,
        r'''$.DetPrt[:].EST''',
      );
  static dynamic fecha(dynamic response) => getJsonField(
        response,
        r'''$.DetPrt[:].FCH''',
      );
  static dynamic garantia(dynamic response) => getJsonField(
        response,
        r'''$.DetPrt[:].GAR''',
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.DetPrt[:].ID''',
      );
  static dynamic inspeccionVisual(dynamic response) => getJsonField(
        response,
        r'''$.DetPrt[:].INS''',
      );
  static dynamic numeroParte(dynamic response) => getJsonField(
        response,
        r'''$.DetPrt[:].NUM_PT''',
      );
  static dynamic numeroSerie(dynamic response) => getJsonField(
        response,
        r'''$.DetPrt[:].NUM_SER''',
      );
  static dynamic password(dynamic response) => getJsonField(
        response,
        r'''$.DetPrt[:].PWD''',
      );
  static dynamic tarea(dynamic response) => getJsonField(
        response,
        r'''$.DetPrt[:].TAR''',
      );
  static dynamic tecnico(dynamic response) => getJsonField(
        response,
        r'''$.DetPrt[:].TEC''',
      );
  static dynamic telefono(dynamic response) => getJsonField(
        response,
        r'''$.DetPrt[:].TLF''',
      );
  static dynamic tratamientoDeDatos(dynamic response) => getJsonField(
        response,
        r'''$.DetPrt[:].LIN[:].CON_PRI_PT_TRA''',
      );
  static dynamic terminosYCondiciones(dynamic response) => getJsonField(
        response,
        r'''$.DetPrt[:].LIN[:].CON_REP_PT_TRA''',
      );
  static dynamic lIneas(dynamic response) => getJsonField(
        response,
        r'''$.DetPrt[:].LIN''',
        true,
      );
  static dynamic esFirmas(dynamic response) => getJsonField(
        response,
        r'''$.DetPrt[:].ES_FIR''',
      );
  static dynamic base64(dynamic response) => getJsonField(
        response,
        r'''$.DetPrt[:].FIR_BAS_64''',
      );
  static dynamic img1(dynamic response) => getJsonField(
        response,
        r'''$.DetPrt[:].INS_VIS_IMG_1''',
      );
  static dynamic img2(dynamic response) => getJsonField(
        response,
        r'''$.DetPrt[:].INS_VIS_IMG_2''',
      );
  static dynamic img3(dynamic response) => getJsonField(
        response,
        r'''$.DetPrt[:].INS_VIS_IMG_3''',
      );
  static dynamic img4(dynamic response) => getJsonField(
        response,
        r'''$.DetPrt[:].INS_VIS_IMG_4''',
      );
}

class ListaDePartesCall {
  static Future<ApiCallResponse> call({
    String? busqueda = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Lista de partes',
      apiUrl: 'https://vmodapache2.scalecloud.net/rubiconbase/API_PRT',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'ES_FIR': false,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
    );
  }

  static dynamic numeroParte(dynamic response) => getJsonField(
        response,
        r'''$.Prt[:].NUM_PT''',
        true,
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.Prt[:].ID''',
        true,
      );
  static dynamic fecha(dynamic response) => getJsonField(
        response,
        r'''$.Prt[:].FCH''',
        true,
      );
  static dynamic cliente(dynamic response) => getJsonField(
        response,
        r'''$.Prt[:].CLT''',
        true,
      );
  static dynamic partes(dynamic response) => getJsonField(
        response,
        r'''$.Prt''',
        true,
      );
}

class ListaDeAlbaranesCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Lista de albaranes',
      apiUrl: 'https://vmodapache2.scalecloud.net/rubiconbase/API_ALB',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic albaranes(dynamic response) => getJsonField(
        response,
        r'''$.Alb''',
        true,
      );
  static dynamic cliente(dynamic response) => getJsonField(
        response,
        r'''$.Alb[:].CLT''',
        true,
      );
  static dynamic esFirmado(dynamic response) => getJsonField(
        response,
        r'''$.Alb[:].ES_FIR''',
        true,
      );
  static dynamic fecha(dynamic response) => getJsonField(
        response,
        r'''$.Alb[:].FCH''',
        true,
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.Alb[:].ID''',
        true,
      );
  static dynamic numeroDeAlbaran(dynamic response) => getJsonField(
        response,
        r'''$.Alb[:].NUM_ALB''',
        true,
      );
  static dynamic totalAlbaran(dynamic response) => getJsonField(
        response,
        r'''$.Alb[:].TOT_ALB''',
        true,
      );
}

class DetalleDeAlbaranesCall {
  static Future<ApiCallResponse> call({
    int? id = 1,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Detalle de albaranes',
      apiUrl: 'https://vmodapache2.scalecloud.net/rubiconbase/DET_API_ALB',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'ID': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic detallesDeAlbaran(dynamic response) => getJsonField(
        response,
        r'''$.DetAlb''',
        true,
      );
  static dynamic clientes(dynamic response) => getJsonField(
        response,
        r'''$.DetAlb[:].CLT''',
      );
  static dynamic esFirmado(dynamic response) => getJsonField(
        response,
        r'''$.DetAlb[:].ES_FIR''',
      );
  static dynamic fecha(dynamic response) => getJsonField(
        response,
        r'''$.DetAlb[:].FCH''',
      );
  static dynamic formaDePago(dynamic response) => getJsonField(
        response,
        r'''$.DetAlb[:].FPG''',
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.DetAlb[:].ID''',
      );
  static dynamic lineaDeAlbaran(dynamic response) => getJsonField(
        response,
        r'''$.DetAlb[:].LIN''',
        true,
      );
  static dynamic cantidad(dynamic response) => getJsonField(
        response,
        r'''$.DetAlb[:].LIN[:].CAN''',
      );
  static dynamic idLinea(dynamic response) => getJsonField(
        response,
        r'''$.DetAlb[:].LIN[:].ID''',
      );
  static dynamic porcentajeDescuento(dynamic response) => getJsonField(
        response,
        r'''$.DetAlb[:].LIN[:].POR_DTO''',
      );
  static dynamic precio(dynamic response) => getJsonField(
        response,
        r'''$.DetAlb[:].LIN[:].PRE''',
      );
  static dynamic sku(dynamic response) => getJsonField(
        response,
        r'''$.DetAlb[:].LIN[:].SKU''',
      );
  static dynamic numeroDeAlbaran(dynamic response) => getJsonField(
        response,
        r'''$.DetAlb[:].NUM_ALB''',
      );
  static dynamic totalAlbaran(dynamic response) => getJsonField(
        response,
        r'''$.DetAlb[:].TOT_ALB''',
      );
}

class ModificacionDeAlbaranesCall {
  static Future<ApiCallResponse> call({
    int? id = 25,
    String? firBas64 =
        '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',
  }) {
    final body = '''
{
  "DetAlb": [
    {
      "FIR_BAS_64": "${firBas64}"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Modificacion de albaranes',
      apiUrl:
          'https://vmodapache2.scalecloud.net/rubiconbase/DET_API_ALB_POST?ID=${id}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ModificacionDePartesCall {
  static Future<ApiCallResponse> call({
    String? firBas64 = '',
    int? id = 1771,
    String? img1 = 'asd',
    String? img2 = '',
    String? img3 = '',
    String? img4 = '',
    int? esFir = 1,
  }) {
    final body = '''
{
  "DetPrt": [
    {
      "FIR_BAS_64": "${firBas64}",
      "INS_VIS_IMG_1": "${img1}",
      "INS_VIS_IMG_2": "${img2}",
      "INS_VIS_IMG_3": "${img3}",
      "INS_VIS_IMG_4": "${img4}",
      "ES_FIR": ${esFir}
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Modificacion de partes',
      apiUrl:
          'https://vmodapache2.scalecloud.net/rubiconbase/DET_API_PRT_POST?ID=${id}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
