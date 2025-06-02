import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'redefinir_senha_widget.dart' show RedefinirSenhaWidget;
import 'package:flutter/material.dart';

class RedefinirSenhaModel extends FlutterFlowModel<RedefinirSenhaWidget> {
  ///  Local state fields for this page.

  bool validaSenha = false;

  bool validaConfSenha = false;

  bool dicaSenha = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for inputSenha widget.
  FocusNode? inputSenhaFocusNode;
  TextEditingController? inputSenhaTextController;
  late bool inputSenhaVisibility;
  String? Function(BuildContext, String?)? inputSenhaTextControllerValidator;
  // State field(s) for inputConfirmarSenha widget.
  FocusNode? inputConfirmarSenhaFocusNode;
  TextEditingController? inputConfirmarSenhaTextController;
  late bool inputConfirmarSenhaVisibility;
  String? Function(BuildContext, String?)?
      inputConfirmarSenhaTextControllerValidator;
  // Stores action output result for [Backend Call - API (Alterar Senha)] action in Button widget.
  ApiCallResponse? apiResultbfl;

  @override
  void initState(BuildContext context) {
    inputSenhaVisibility = false;
    inputConfirmarSenhaVisibility = false;
  }

  @override
  void dispose() {
    inputSenhaFocusNode?.dispose();
    inputSenhaTextController?.dispose();

    inputConfirmarSenhaFocusNode?.dispose();
    inputConfirmarSenhaTextController?.dispose();
  }
}
