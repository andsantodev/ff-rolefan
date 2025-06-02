import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'completar_perfil_widget.dart' show CompletarPerfilWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CompletarPerfilModel extends FlutterFlowModel<CompletarPerfilWidget> {
  ///  Local state fields for this page.

  bool validaNome = false;

  bool validaTelefone = false;

  bool validaNascimento = false;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadData = false;
  FFUploadedFile uploadedLocalFile_uploadData =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for inputNome widget.
  FocusNode? inputNomeFocusNode;
  TextEditingController? inputNomeTextController;
  String? Function(BuildContext, String?)? inputNomeTextControllerValidator;
  // State field(s) for inputTelefone widget.
  FocusNode? inputTelefoneFocusNode;
  TextEditingController? inputTelefoneTextController;
  final inputTelefoneMask = MaskTextInputFormatter(mask: '(##)#####-####');
  String? Function(BuildContext, String?)? inputTelefoneTextControllerValidator;
  // State field(s) for inputDataNascimento widget.
  FocusNode? inputDataNascimentoFocusNode;
  TextEditingController? inputDataNascimentoTextController;
  final inputDataNascimentoMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      inputDataNascimentoTextControllerValidator;
  // Stores action output result for [Custom Action - validateBirthDate] action in inputDataNascimento widget.
  bool? outNascimento;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputNomeFocusNode?.dispose();
    inputNomeTextController?.dispose();

    inputTelefoneFocusNode?.dispose();
    inputTelefoneTextController?.dispose();

    inputDataNascimentoFocusNode?.dispose();
    inputDataNascimentoTextController?.dispose();
  }
}
