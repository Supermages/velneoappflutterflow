import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['es', 'ca'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? esText = '',
    String? caText = '',
  }) =>
      [esText, caText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // CondicionesPartes
  {
    'g3rnqfku': {
      'es': 'Condiciones',
      'ca': '',
    },
    'nsiji92n': {
      'es': 'Tratamiento de datos',
      'ca': '',
    },
    'i7b0hmvp': {
      'es': 'Terminos y Condiciones',
      'ca': '',
    },
    'rt4u25vi': {
      'es':
          'Acepto el tratamiento de mis datos para el envío de comunicaciones de productos o servicios. \nReglamento (UE) 2016/679 del Parlamento Europeo y del Consejo de 27 de abril de 2016. *',
      'ca': '',
    },
    'cx8pynx1': {
      'es':
          'Acepto el tratamiento de mis datos para el \nenvío de comunicaciones de productos o servicios. \nReglamento (UE) 2016/679 del Parlamento Europeo \ny del Consejo de 27 de abril de 2016. *',
      'ca': '',
    },
    '8xb68zk8': {
      'es':
          'He leído, entiendo, y acepto los términos y condiciones de reparación.',
      'ca': '',
    },
    'ymovdmat': {
      'es':
          'He leído, entiendo, y acepto \nlos términos y condiciones de reparación.',
      'ca': '',
    },
    '0qdra2pc': {
      'es': 'Aceptar',
      'ca': '',
    },
    'w6fu2mvf': {
      'es': 'Home',
      'ca': '',
    },
  },
  // Firma
  {
    'u0jfon2l': {
      'es': 'Firma',
      'ca': '',
    },
    'f692deki': {
      'es': 'Por favor, introduzca su firma',
      'ca': '',
    },
    'd49m81md': {
      'es': 'Home',
      'ca': '',
    },
  },
  // Entrada
  {
    '0d2hudnp': {
      'es': 'Entrada',
      'ca': '',
    },
    'zw4oc19v': {
      'es': 'Entrar',
      'ca': '',
    },
    '38h366gl': {
      'es': 'Home',
      'ca': '',
    },
  },
  // Partes
  {
    'uivu51qr': {
      'es': 'Buscar...',
      'ca': '',
    },
    'n9rp9k53': {
      'es': 'Nº de parte: ',
      'ca': '',
    },
    'ambyhi4s': {
      'es': 'Cliente: ',
      'ca': '',
    },
    'kru7ha18': {
      'es': 'Fecha: ',
      'ca': '',
    },
    '3gxg7vx1': {
      'es': 'Partes por firmar',
      'ca': '',
    },
    'qxd8toiv': {
      'es': 'Home',
      'ca': '',
    },
  },
  // ParteDetalle
  {
    'azpdi51a': {
      'es': 'Datos Generales',
      'ca': '',
    },
    '8op31q07': {
      'es': 'Fecha:',
      'ca': '',
    },
    'eryn4qjm': {
      'es': 'Cliente:',
      'ca': '',
    },
    'gd87jk3e': {
      'es': 'Nº serie:',
      'ca': '',
    },
    'mw2j734n': {
      'es': 'Descripción:',
      'ca': '',
    },
    'td54j13n': {
      'es': 'Técnico:',
      'ca': '',
    },
    'ls7qfzsj': {
      'es': 'Comercial:',
      'ca': '',
    },
    'kcnth34i': {
      'es': 'Tarea',
      'ca': '',
    },
    'k97i8bs6': {
      'es': 'Estado:',
      'ca': '',
    },
    'dkiyyahb': {
      'es': 'Teléfono:',
      'ca': '',
    },
    'qgo5z74z': {
      'es': 'Email:',
      'ca': '',
    },
    'mgch7w1g': {
      'es': 'Recepción del parte',
      'ca': '',
    },
    'zik4qa6j': {
      'es': 'Buscar:',
      'ca': '',
    },
    'ncontrat': {
      'es': 'Copia de seguridad:',
      'ca': '',
    },
    'jfd5ikwd': {
      'es': 'Contraseña:',
      'ca': '',
    },
    'vgd5xa9w': {
      'es': 'Garantia:',
      'ca': '',
    },
    'ni0266q2': {
      'es': 'Inspección Visual:',
      'ca': '',
    },
    'uvikl06q': {
      'es': 'Donde:',
      'ca': '',
    },
    'w3a1d46b': {
      'es': 'Averia\\tarea:',
      'ca': '',
    },
    'b2ilfmbd': {
      'es': 'Observaciones',
      'ca': '',
    },
    '31riml00': {
      'es': 'Imágenes:',
      'ca': '',
    },
    'p5kfp1p1': {
      'es': 'Firmar',
      'ca': '',
    },
    '3sfg5xbj': {
      'es': 'Parte',
      'ca': '',
    },
    'sfweir3b': {
      'es': 'Home',
      'ca': '',
    },
  },
  // Configuracion
  {
    'y3hfjdn4': {
      'es': 'Configuración',
      'ca': '',
    },
    'fvbu9pmb': {
      'es': 'Logotipo de la empresa en modo claro:',
      'ca': '',
    },
    '4foe0j80': {
      'es': 'Logotipo de la empresa en modo oscuro:',
      'ca': '',
    },
    'knx49dye': {
      'es': 'Cambiar a modo oscuro',
      'ca': '',
    },
    'lxehqd52': {
      'es': 'Cambiar a modo claro',
      'ca': '',
    },
    'kxjh47ms': {
      'es': 'Salir de la aplicación',
      'ca': '',
    },
    '35kaax3h': {
      'es': 'Home',
      'ca': '',
    },
  },
  // Menu
  {
    'fnc7kxvy': {
      'es': 'Menú',
      'ca': '',
    },
    'svaqwnun': {
      'es': 'Partes de trabajo',
      'ca': '',
    },
    's5mnuhvh': {
      'es': 'Albaranes de venta',
      'ca': '',
    },
    'bvtzbcvs': {
      'es': 'Home',
      'ca': '',
    },
  },
  // Albaranes
  {
    'dv5ibegz': {
      'es': 'Buscar...',
      'ca': '',
    },
    'svke7nl3': {
      'es': 'Nº Albarán: ',
      'ca': '',
    },
    'wclrz34a': {
      'es': 'Cliente: ',
      'ca': '',
    },
    'yu5ylxxv': {
      'es': 'Fecha: ',
      'ca': '',
    },
    'idku8ix9': {
      'es': 'Total precio: ',
      'ca': '',
    },
    '2nurg6zs': {
      'es': ' €',
      'ca': '',
    },
    'ghbnz81j': {
      'es': 'Albaranes por firmar',
      'ca': '',
    },
    'ge3tp0vd': {
      'es': 'Home',
      'ca': '',
    },
  },
  // AlbaranesDetalle
  {
    'kzk7vsvh': {
      'es': 'Datos generales',
      'ca': '',
    },
    'g8k1xswa': {
      'es': 'Fecha:',
      'ca': '',
    },
    'rvickdhj': {
      'es': 'Cliente:',
      'ca': '',
    },
    'rzu8kfqg': {
      'es': 'Forma de pago:',
      'ca': '',
    },
    'tb79ylt5': {
      'es': 'SKU:',
      'ca': '',
    },
    '7f8ybss0': {
      'es': 'Descripción:',
      'ca': '',
    },
    'oa93mhbe': {
      'es': 'Cantidad:',
      'ca': '',
    },
    'l9v4vnns': {
      'es': 'Precio:',
      'ca': '',
    },
    'aea6y29d': {
      'es': 'Porcentaje de descuento:',
      'ca': '',
    },
    'c4k3cugr': {
      'es': 'Total Albaran:',
      'ca': '',
    },
    '6nyipsgs': {
      'es': 'Firmar',
      'ca': '',
    },
    '22s9bzjd': {
      'es': 'Albaranes',
      'ca': '',
    },
    '6vjg1zu9': {
      'es': 'Home',
      'ca': '',
    },
  },
  // CondicionesAlbaranes
  {
    'nddbxier': {
      'es': 'Condiciones',
      'ca': '',
    },
    'b4zrh2is': {
      'es':
          'Certifico que estoy retirando de Gestiomatica\n el material anteriormente detallado.',
      'ca': '',
    },
    'csilccqi': {
      'es': 'Certificar',
      'ca': '',
    },
    'tsskyu28': {
      'es': 'Home',
      'ca': '',
    },
  },
  // Miscellaneous
  {
    'weywe8xs': {
      'es': 'Necesitamos utilizar su camara para las imagenes del parte.',
      'ca': '',
    },
    '7104kjmw': {
      'es':
          'Necesitamos utilizar su libreria de fotos para seleccionar las imagenes del parte.',
      'ca': '',
    },
    '0dl8cazh': {
      'es': 'Necesitamos este permiso para poder cargar bien las imagenes.',
      'ca': '',
    },
    'nywwcxn9': {
      'es': '',
      'ca': '',
    },
    'p5a6wpbi': {
      'es': '',
      'ca': '',
    },
    'dwg9s051': {
      'es': '',
      'ca': '',
    },
    'skhuavd8': {
      'es': '',
      'ca': '',
    },
    'zp5fb2wc': {
      'es': '',
      'ca': '',
    },
    'yah4iqvw': {
      'es': '',
      'ca': '',
    },
    '3iw098rb': {
      'es': '',
      'ca': '',
    },
    'q3v6gbw9': {
      'es': '',
      'ca': '',
    },
    'txr17uv5': {
      'es': '',
      'ca': '',
    },
    'zkea6mpx': {
      'es': '',
      'ca': '',
    },
    'fksi30qu': {
      'es': '',
      'ca': '',
    },
    'fzbuzqte': {
      'es': '',
      'ca': '',
    },
    'yo4aise2': {
      'es': '',
      'ca': '',
    },
    'y4aoe11l': {
      'es': '',
      'ca': '',
    },
    'm3h7mot2': {
      'es': '',
      'ca': '',
    },
    'h0byoujf': {
      'es': '',
      'ca': '',
    },
    '0kufhtt2': {
      'es': '',
      'ca': '',
    },
    'ibop301l': {
      'es': '',
      'ca': '',
    },
    'qzc6lbxf': {
      'es': '',
      'ca': '',
    },
    '2lxuedoq': {
      'es': '',
      'ca': '',
    },
    'iwc6uvc2': {
      'es': '',
      'ca': '',
    },
    '3jckwo7l': {
      'es': '',
      'ca': '',
    },
    'gsbcauil': {
      'es': '',
      'ca': '',
    },
  },
].reduce((a, b) => a..addAll(b));
