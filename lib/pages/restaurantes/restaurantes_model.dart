import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dart:async';
import 'restaurantes_widget.dart' show RestaurantesWidget;
import 'package:flutter/material.dart';

class RestaurantesModel extends FlutterFlowModel<RestaurantesWidget> {
  ///  Local state fields for this page.

  List<FavoritosRow> salvos = [];
  void addToSalvos(FavoritosRow item) => salvos.add(item);
  void removeFromSalvos(FavoritosRow item) => salvos.remove(item);
  void removeAtIndexFromSalvos(int index) => salvos.removeAt(index);
  void insertAtIndexInSalvos(int index, FavoritosRow item) =>
      salvos.insert(index, item);
  void updateSalvosAtIndex(int index, Function(FavoritosRow) updateFn) =>
      salvos[index] = updateFn(salvos[index]);

  int contador = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in Restaurantes widget.
  List<FavoritosRow>? favoriteResult;
  // Stores action output result for [Bottom Sheet - CompAtualizarLocalizacao] action in Row widget.
  bool? novoLocal;
  bool apiRequestCompleted = false;
  String? apiRequestLastUniqueKey;
  // Stores action output result for [Bottom Sheet - CompOpcoesLista] action in IconButton widget.
  bool? retorno;
  // Stores action output result for [Custom Action - checkInternet] action in ListView widget.
  bool? checkConnectionRefresh;
  // Stores action output result for [Custom Action - checkInternet] action in Container widget.
  bool? checkConnection;
  // Stores action output result for [Backend Call - Insert Row] action in IconButton widget.
  FavoritosRow? addFavorito;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleted;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
