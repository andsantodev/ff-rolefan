import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dart:async';
import 'roles_widget.dart' show RolesWidget;
import 'package:flutter/material.dart';

class RolesModel extends FlutterFlowModel<RolesWidget> {
  ///  Local state fields for this page.

  List<FavoritosRow> favoritos = [];
  void addToFavoritos(FavoritosRow item) => favoritos.add(item);
  void removeFromFavoritos(FavoritosRow item) => favoritos.remove(item);
  void removeAtIndexFromFavoritos(int index) => favoritos.removeAt(index);
  void insertAtIndexInFavoritos(int index, FavoritosRow item) =>
      favoritos.insert(index, item);
  void updateFavoritosAtIndex(int index, Function(FavoritosRow) updateFn) =>
      favoritos[index] = updateFn(favoritos[index]);

  int contador = 0;

  String? fitroEstilos;

  List<String> filtrarEstilos = [];
  void addToFiltrarEstilos(String item) => filtrarEstilos.add(item);
  void removeFromFiltrarEstilos(String item) => filtrarEstilos.remove(item);
  void removeAtIndexFromFiltrarEstilos(int index) =>
      filtrarEstilos.removeAt(index);
  void insertAtIndexInFiltrarEstilos(int index, String item) =>
      filtrarEstilos.insert(index, item);
  void updateFiltrarEstilosAtIndex(int index, Function(String) updateFn) =>
      filtrarEstilos[index] = updateFn(filtrarEstilos[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - checkInternet] action in Roles widget.
  bool? checkConnectionEventos;
  // Stores action output result for [Backend Call - Query Rows] action in Roles widget.
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
  bool? checkConnectionEvento;
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
