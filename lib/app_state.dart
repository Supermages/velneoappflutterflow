import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _logoTempo = prefs.getString('ff_logoTempo') ?? _logoTempo;
    });
    _safeInit(() {
      _tempoImagenOscuro =
          prefs.getString('ff_tempoImagenOscuro') ?? _tempoImagenOscuro;
    });
    _safeInit(() {
      _terminosYCondiciones =
          prefs.getString('ff_terminosYCondiciones') ?? _terminosYCondiciones;
    });
    _safeInit(() {
      _tratamientoDeDatos =
          prefs.getString('ff_tratamientoDeDatos') ?? _tratamientoDeDatos;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _Condicion1 = false;
  bool get Condicion1 => _Condicion1;
  set Condicion1(bool _value) {
    _Condicion1 = _value;
  }

  bool _Condicion2 = false;
  bool get Condicion2 => _Condicion2;
  set Condicion2(bool _value) {
    _Condicion2 = _value;
  }

  bool _Firmado = false;
  bool get Firmado => _Firmado;
  set Firmado(bool _value) {
    _Firmado = _value;
  }

  bool _isDarkMode = false;
  bool get isDarkMode => _isDarkMode;
  set isDarkMode(bool _value) {
    _isDarkMode = _value;
  }

  bool _isLightMode = false;
  bool get isLightMode => _isLightMode;
  set isLightMode(bool _value) {
    _isLightMode = _value;
  }

  List<int> _Search = [];
  List<int> get Search => _Search;
  set Search(List<int> _value) {
    _Search = _value;
  }

  void addToSearch(int _value) {
    _Search.add(_value);
  }

  void removeFromSearch(int _value) {
    _Search.remove(_value);
  }

  void removeAtIndexFromSearch(int _index) {
    _Search.removeAt(_index);
  }

  void updateSearchAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _Search[_index] = updateFn(_Search[_index]);
  }

  bool _haFirmado = false;
  bool get haFirmado => _haFirmado;
  set haFirmado(bool _value) {
    _haFirmado = _value;
  }

  bool _isAlbaranes = false;
  bool get isAlbaranes => _isAlbaranes;
  set isAlbaranes(bool _value) {
    _isAlbaranes = _value;
  }

  String _glovalSearch = '';
  String get glovalSearch => _glovalSearch;
  set glovalSearch(String _value) {
    _glovalSearch = _value;
  }

  String _NUMFAC = '';
  String get NUMFAC => _NUMFAC;
  set NUMFAC(String _value) {
    _NUMFAC = _value;
  }

  int _ID = 1;
  int get ID => _ID;
  set ID(int _value) {
    _ID = _value;
  }

  String _img = '';
  String get img => _img;
  set img(String _value) {
    _img = _value;
  }

  String _ColorGeneral = '#E37443';
  String get ColorGeneral => _ColorGeneral;
  set ColorGeneral(String _value) {
    _ColorGeneral = _value;
  }

  String _logoTempo =
      'https://www.rubiconsulting.es/wp-content/uploads/2019/08/Logo2-01.png';
  String get logoTempo => _logoTempo;
  set logoTempo(String _value) {
    _logoTempo = _value;
    prefs.setString('ff_logoTempo', _value);
  }

  String _tempoImagenOscuro =
      'https://www.rubiconsulting.es/wp-content/uploads/2019/12/logo_blanco.png';
  String get tempoImagenOscuro => _tempoImagenOscuro;
  set tempoImagenOscuro(String _value) {
    _tempoImagenOscuro = _value;
    prefs.setString('ff_tempoImagenOscuro', _value);
  }

  bool _primeraVez = false;
  bool get primeraVez => _primeraVez;
  set primeraVez(bool _value) {
    _primeraVez = _value;
  }

  String _test = '';
  String get test => _test;
  set test(String _value) {
    _test = _value;
  }

  String _terminosYCondiciones = '';
  String get terminosYCondiciones => _terminosYCondiciones;
  set terminosYCondiciones(String _value) {
    _terminosYCondiciones = _value;
    prefs.setString('ff_terminosYCondiciones', _value);
  }

  String _tratamientoDeDatos = '';
  String get tratamientoDeDatos => _tratamientoDeDatos;
  set tratamientoDeDatos(String _value) {
    _tratamientoDeDatos = _value;
    prefs.setString('ff_tratamientoDeDatos', _value);
  }

  bool _estaCargando = false;
  bool get estaCargando => _estaCargando;
  set estaCargando(bool _value) {
    _estaCargando = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
