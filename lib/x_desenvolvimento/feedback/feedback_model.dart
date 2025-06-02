import '/backend/supabase/supabase.dart';
import '/componentes/comp_restricao_mobile/comp_restricao_mobile_widget.dart';
import '/componentes/floating_bottom_navigation/floating_bottom_navigation_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'feedback_widget.dart' show FeedbackWidget;
import 'package:flutter/material.dart';

class FeedbackModel extends FlutterFlowModel<FeedbackWidget> {
  ///  Local state fields for this page.

  bool validaForm = false;

  bool validaInput = false;

  List<FFUploadedFile> listaImagens = [];
  void addToListaImagens(FFUploadedFile item) => listaImagens.add(item);
  void removeFromListaImagens(FFUploadedFile item) => listaImagens.remove(item);
  void removeAtIndexFromListaImagens(int index) => listaImagens.removeAt(index);
  void insertAtIndexInListaImagens(int index, FFUploadedFile item) =>
      listaImagens.insert(index, item);
  void updateListaImagensAtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      listaImagens[index] = updateFn(listaImagens[index]);

  int limite = 3;

  ///  State fields for stateful widgets in this page.

  // State field(s) for inputComentario1 widget.
  FocusNode? inputComentario1FocusNode;
  TextEditingController? inputComentario1TextController;
  String? Function(BuildContext, String?)?
      inputComentario1TextControllerValidator;
  // State field(s) for inputComentario2 widget.
  FocusNode? inputComentario2FocusNode;
  TextEditingController? inputComentario2TextController;
  String? Function(BuildContext, String?)?
      inputComentario2TextControllerValidator;
  bool isDataUploading_uploadData1 = false;
  FFUploadedFile uploadedLocalFile_uploadData1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Custom Action - getDeviceInfo] action in Button widget.
  String? outDevice;
  bool isDataUploading_uploadDataFeedback = false;
  List<FFUploadedFile> uploadedLocalFiles_uploadDataFeedback = [];
  List<String> uploadedFileUrls_uploadDataFeedback = [];

  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  TestadoresRow? feedbackEnviado;
  // Model for FloatingBottomNavigation component.
  late FloatingBottomNavigationModel floatingBottomNavigationModel;
  // Model for CompRestricaoMobile component.
  late CompRestricaoMobileModel compRestricaoMobileModel;

  @override
  void initState(BuildContext context) {
    floatingBottomNavigationModel =
        createModel(context, () => FloatingBottomNavigationModel());
    compRestricaoMobileModel =
        createModel(context, () => CompRestricaoMobileModel());
  }

  @override
  void dispose() {
    inputComentario1FocusNode?.dispose();
    inputComentario1TextController?.dispose();

    inputComentario2FocusNode?.dispose();
    inputComentario2TextController?.dispose();

    floatingBottomNavigationModel.dispose();
    compRestricaoMobileModel.dispose();
  }
}
