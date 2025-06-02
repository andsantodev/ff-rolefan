import '/flutter_flow/flutter_flow_util.dart';
import 'mudar_senha_widget.dart' show MudarSenhaWidget;
import 'package:flutter/material.dart';

class MudarSenhaModel extends FlutterFlowModel<MudarSenhaWidget> {
  ///  Local state fields for this page.

  bool validaSenha = false;

  bool validaConfSenha = false;

  bool dicaSenha = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for inputNovaSenha widget.
  FocusNode? inputNovaSenhaFocusNode;
  TextEditingController? inputNovaSenhaTextController;
  late bool inputNovaSenhaVisibility;
  String? Function(BuildContext, String?)?
      inputNovaSenhaTextControllerValidator;
  // State field(s) for inputConfirmarSenha widget.
  FocusNode? inputConfirmarSenhaFocusNode;
  TextEditingController? inputConfirmarSenhaTextController;
  late bool inputConfirmarSenhaVisibility;
  String? Function(BuildContext, String?)?
      inputConfirmarSenhaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    inputNovaSenhaVisibility = false;
    inputConfirmarSenhaVisibility = false;
  }

  @override
  void dispose() {
    inputNovaSenhaFocusNode?.dispose();
    inputNovaSenhaTextController?.dispose();

    inputConfirmarSenhaFocusNode?.dispose();
    inputConfirmarSenhaTextController?.dispose();
  }
}
