import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cadastrar_widget.dart' show CadastrarWidget;
import 'package:flutter/material.dart';

class CadastrarModel extends FlutterFlowModel<CadastrarWidget> {
  ///  Local state fields for this page.

  bool validaTermos = false;

  bool validaEmail = false;

  bool validaSenha = false;

  bool validaCadastro = false;

  bool validaConfSenha = false;

  bool dicaSenha = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for inputEmail widget.
  FocusNode? inputEmailFocusNode;
  TextEditingController? inputEmailTextController;
  String? Function(BuildContext, String?)? inputEmailTextControllerValidator;
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
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Backend Call - API (Cadastro)] action in Button widget.
  ApiCallResponse? apiResultCadastro;

  @override
  void initState(BuildContext context) {
    inputSenhaVisibility = false;
    inputConfirmarSenhaVisibility = false;
  }

  @override
  void dispose() {
    inputEmailFocusNode?.dispose();
    inputEmailTextController?.dispose();

    inputSenhaFocusNode?.dispose();
    inputSenhaTextController?.dispose();

    inputConfirmarSenhaFocusNode?.dispose();
    inputConfirmarSenhaTextController?.dispose();
  }
}
