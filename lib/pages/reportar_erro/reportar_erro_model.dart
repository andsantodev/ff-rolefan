import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'reportar_erro_widget.dart' show ReportarErroWidget;
import 'package:flutter/material.dart';

class ReportarErroModel extends FlutterFlowModel<ReportarErroWidget> {
  ///  Local state fields for this page.

  bool inputVazio = false;

  bool validaComentario = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for inputComentario widget.
  FocusNode? inputComentarioFocusNode;
  TextEditingController? inputComentarioTextController;
  String? Function(BuildContext, String?)?
      inputComentarioTextControllerValidator;
  bool isDataUploading_uploadDataErro = false;
  FFUploadedFile uploadedLocalFile_uploadDataErro =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Custom Action - getDeviceInfo] action in Button widget.
  String? outDevice;
  bool isDataUploading_uploadDataJo1 = false;
  FFUploadedFile uploadedLocalFile_uploadDataJo1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataJo1 = '';

  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  ErrosReportadosRow? erroEnviado;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputComentarioFocusNode?.dispose();
    inputComentarioTextController?.dispose();
  }
}
