import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'firma_model.dart';
export 'firma_model.dart';

class FirmaWidget extends StatefulWidget {
  const FirmaWidget({Key? key}) : super(key: key);

  @override
  _FirmaWidgetState createState() => _FirmaWidgetState();
}

class _FirmaWidgetState extends State<FirmaWidget> {
  late FirmaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FirmaModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFF3730E8),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Color(0x004B39EF),
            borderRadius: 20.0,
            borderWidth: 1.0,
            buttonSize: 40.0,
            fillColor: Color(0x004B39EF),
            icon: Icon(
              Icons.arrow_back_sharp,
              color: Colors.white,
              size: 28.0,
            ),
            onPressed: () async {
              var confirmDialogResponse = await showDialog<bool>(
                    context: context,
                    builder: (alertDialogContext) {
                      return AlertDialog(
                        title: Text('Alerta'),
                        content: Text(
                            '¿Esta seguro que quiere retroceder? Se cancelara el proceso de firma.'),
                        actions: [
                          TextButton(
                            onPressed: () =>
                                Navigator.pop(alertDialogContext, false),
                            child: Text('No'),
                          ),
                          TextButton(
                            onPressed: () =>
                                Navigator.pop(alertDialogContext, true),
                            child: Text('Si'),
                          ),
                        ],
                      );
                    },
                  ) ??
                  false;
              if (!confirmDialogResponse) {
                return;
              }
              if (FFAppState().isAlbaranes) {
                context.goNamed('AlbaranesDetalle');
              } else {
                context.goNamed('ParteDetalle');
              }
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'u0jfon2l' /* Firma */,
            ),
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: 'Readex Pro',
                  fontSize: 28.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'f692deki' /* Por favor, introduzca su firma */,
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Outfit',
                              fontStyle: FontStyle.italic,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 0.6,
                child: custom_widgets.Signatura(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * 0.6,
                  volverAXLugar: () async {
                    var _shouldSetState = false;
                    if (FFAppState().isAlbaranes) {
                      var confirmDialogResponse = await showDialog<bool>(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('Confirmación'),
                                content: Text(
                                    '¿Esta seguro que su firma esta correcta?'),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(
                                        alertDialogContext, false),
                                    child: Text('No'),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext, true),
                                    child: Text('Si'),
                                  ),
                                ],
                              );
                            },
                          ) ??
                          false;
                      if (!confirmDialogResponse) {
                        if (_shouldSetState) setState(() {});
                        return;
                      }
                      _model.modificacionAlbaranes =
                          await ModificacionDeAlbaranesCall.call(
                        id: FFAppState().ID,
                        firBas64: FFAppState().img,
                      );
                      _shouldSetState = true;
                      if ((_model.modificacionAlbaranes?.succeeded ?? true)) {
                        setState(() {
                          FFAppState().isAlbaranes = false;
                        });
                      } else {
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('El post ha fallado.'),
                              content: Text(
                                  'Vuelva a intentarlo despues de un rato.'),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext),
                                  child: Text('Ok'),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    } else {
                      var confirmDialogResponse = await showDialog<bool>(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('Confirmación'),
                                content: Text(
                                    '¿Esta seguro que su firma esta correcta?'),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(
                                        alertDialogContext, false),
                                    child: Text('No'),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext, true),
                                    child: Text('Si'),
                                  ),
                                ],
                              );
                            },
                          ) ??
                          false;
                      if (!confirmDialogResponse) {
                        if (_shouldSetState) setState(() {});
                        return;
                      }
                      _model.modificacionPartes =
                          await ModificacionDePartesCall.call(
                        id: FFAppState().ID,
                        firBas64: FFAppState().img,
                        esFir: 1,
                      );
                      _shouldSetState = true;
                      if (!(_model.modificacionPartes?.succeeded ?? true)) {
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('El post ha fallado.'),
                              content: Text(
                                  'Vuelva a intentarlo despues de un rato.'),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext),
                                  child: Text('Ok'),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    }

                    context.goNamed('Menu');

                    if (_shouldSetState) setState(() {});
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
