import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ParteDetalleModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Modificacion de partes)] action in ImagenGaleria widget.
  ApiCallResponse? apiResult1pc;
  // Stores action output result for [Backend Call - API (Modificacion de partes)] action in ImagenGaleria2 widget.
  ApiCallResponse? apiResult2pc;
  // Stores action output result for [Backend Call - API (Modificacion de partes)] action in ImagenGaleria3 widget.
  ApiCallResponse? apiResult3pc;
  // Stores action output result for [Backend Call - API (Modificacion de partes)] action in ImagenGaleria4 widget.
  ApiCallResponse? apiResult4pc;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
