import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'entrada_model.dart';
export 'entrada_model.dart';

class EntradaWidget extends StatefulWidget {
  const EntradaWidget({Key? key}) : super(key: key);

  @override
  _EntradaWidgetState createState() => _EntradaWidgetState();
}

class _EntradaWidgetState extends State<EntradaWidget> {
  late EntradaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EntradaModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().primeraVez) {
        return;
      }

      setDarkModeSetting(context, ThemeMode.system);
      setState(() {
        FFAppState().primeraVez = true;
      });
    });
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
          backgroundColor: colorFromCssString(
            FFAppState().ColorGeneral,
            defaultColor: Color(0xFF464D53),
          ),
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                FFLocalizations.of(context).getText(
                  '0d2hudnp' /* Entrada */,
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
              ),
            ],
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.8,
                  height: MediaQuery.sizeOf(context).height * 0.8,
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed(
                              'Menu',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType:
                                      PageTransitionType.rightToLeft,
                                ),
                              },
                            );
                          },
                          text: FFLocalizations.of(context).getText(
                            'zw4oc19v' /* Entrar */,
                          ),
                          icon: Icon(
                            Icons.login,
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            size: 50.0,
                          ),
                          options: FFButtonOptions(
                            width: 275.0,
                            height: 78.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: colorFromCssString(
                              FFAppState().ColorGeneral,
                              defaultColor: Color(0xFF464D53),
                            ),
                            textStyle: FlutterFlowTheme.of(context)
                                .displayMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color: Colors.white,
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (Theme.of(context).brightness == Brightness.light)
                            Align(
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.8,
                                height: MediaQuery.sizeOf(context).height * 0.1,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.8,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.15,
                                    child: custom_widgets.ImagenEntradaBlanco(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.8,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.15,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (Theme.of(context).brightness == Brightness.dark)
                            Align(
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.8,
                                height: MediaQuery.sizeOf(context).height * 0.1,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, -1.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.8,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.15,
                                    child: custom_widgets.ImagenEntradaNegro(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.8,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.15,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
