import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'comp_comentarios_widget.dart' show CompComentariosWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CompComentariosModel extends FlutterFlowModel<CompComentariosWidget> {
  ///  Local state fields for this component.

  List<AvaliacoesRow> comentarios = [];
  void addToComentarios(AvaliacoesRow item) => comentarios.add(item);
  void removeFromComentarios(AvaliacoesRow item) => comentarios.remove(item);
  void removeAtIndexFromComentarios(int index) => comentarios.removeAt(index);
  void insertAtIndexInComentarios(int index, AvaliacoesRow item) =>
      comentarios.insert(index, item);
  void updateComentariosAtIndex(int index, Function(AvaliacoesRow) updateFn) =>
      comentarios[index] = updateFn(comentarios[index]);

  bool botaoHabilitado = false;

  ///  State fields for stateful widgets in this component.

  Completer<List<AvaliacoesRow>>? requestCompleter;
  // State field(s) for RatingBar widget.
  double? ratingBarValue2;
  // State field(s) for inputComentario widget.
  FocusNode? inputComentarioFocusNode;
  TextEditingController? inputComentarioTextController;
  String? Function(BuildContext, String?)?
      inputComentarioTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in IconButton widget.
  AvaliacoesRow? retornoAvaliacao;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputComentarioFocusNode?.dispose();
    inputComentarioTextController?.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
