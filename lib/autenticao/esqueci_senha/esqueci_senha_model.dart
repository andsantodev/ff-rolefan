import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'esqueci_senha_widget.dart' show EsqueciSenhaWidget;
import 'package:flutter/material.dart';

class EsqueciSenhaModel extends FlutterFlowModel<EsqueciSenhaWidget> {
  ///  Local state fields for this page.

  bool validaEmail = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for inputEmail widget.
  FocusNode? inputEmailFocusNode;
  TextEditingController? inputEmailTextController;
  String? Function(BuildContext, String?)? inputEmailTextControllerValidator;
  // Stores action output result for [Backend Call - API (Email Esqueci a Senha)] action in Button widget.
  ApiCallResponse? outEsqueciSenha;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputEmailFocusNode?.dispose();
    inputEmailTextController?.dispose();
  }
}
