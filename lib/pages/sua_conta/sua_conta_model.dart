import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'sua_conta_widget.dart' show SuaContaWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SuaContaModel extends FlutterFlowModel<SuaContaWidget> {
  ///  Local state fields for this page.

  bool? validaNome = false;

  bool? validaTelefone = false;

  bool? validaNascimento = false;

  bool atualizarPerfil = false;

  bool validaForm = false;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadData1hq = false;
  FFUploadedFile uploadedLocalFile_uploadData1hq =
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
  bool? atualizaNascimento;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Button widget.
  bool? deleteAccount;
  // Stores action output result for [Backend Call - API (Deletar Conta Usuario)] action in Button widget.
  ApiCallResponse? apiResultekr;
  bool isDataUploading_uploadDataAtualizar = false;
  FFUploadedFile uploadedLocalFile_uploadDataAtualizar =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataAtualizar = '';

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
