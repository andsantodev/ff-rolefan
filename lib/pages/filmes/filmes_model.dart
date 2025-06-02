import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dart:async';
import 'filmes_widget.dart' show FilmesWidget;
import 'package:flutter/material.dart';

class FilmesModel extends FlutterFlowModel<FilmesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for inputEmail widget.
  FocusNode? inputEmailFocusNode;
  TextEditingController? inputEmailTextController;
  String? Function(BuildContext, String?)? inputEmailTextControllerValidator;
  // Stores action output result for [Custom Action - checkInternet] action in Column widget.
  bool? checkConnectionRefresh;
  bool requestCompleted = false;
  String? requestLastUniqueKey;
  // Stores action output result for [Custom Action - checkInternet] action in Container widget.
  bool? checkConnectionFilme;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputEmailFocusNode?.dispose();
    inputEmailTextController?.dispose();
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
      final requestComplete = requestCompleted;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
