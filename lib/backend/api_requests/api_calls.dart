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
    int? id = 1,
    String? firBas64 = '',
    bool? isSigned = true,
  }) {
    final body = '''
{
  "DetAlb": [
    {
      "FIR_BAS_64": "${firBas64}",
      "ES_FIR": ${isSigned}
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
    bool? isSigned = true,
    int? id = 1,
  }) {
    final body = '''
{
  "DetPrt": [
    {
      "FIR_BAS_64": "${firBas64}",
      "ES_FIR": ${isSigned}
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
