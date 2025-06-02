import '/backend/supabase/supabase.dart';
import '/componentes/floating_bottom_navigation/floating_bottom_navigation_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dart:async';
import 'salvos_widget.dart' show SalvosWidget;
import 'package:flutter/material.dart';

class SalvosModel extends FlutterFlowModel<SalvosWidget> {
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

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in Salvos widget.
  List<FavoritosRow>? favoriteResult;
  // State field(s) for inputPesquisar widget.
  FocusNode? inputPesquisarFocusNode;
  TextEditingController? inputPesquisarTextController;
  String? Function(BuildContext, String?)?
      inputPesquisarTextControllerValidator;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  bool apiRequestCompleted2 = false;
  String? apiRequestLastUniqueKey2;
  // Stores action output result for [Custom Action - checkInternet] action in Container widget.
  bool? checkConnectionEvento;
  // Stores action output result for [Bottom Sheet - CompRemoverFavorito] action in IconButton widget.
  bool? removerEvento;
  bool apiRequestCompleted1 = false;
  String? apiRequestLastUniqueKey1;
  // Stores action output result for [Custom Action - checkInternet] action in Container widget.
  bool? checkConnectionRestaurante;
  // Stores action output result for [Bottom Sheet - CompRemoverFavorito] action in IconButton widget.
  bool? removerRestaurante;
  // Model for FloatingBottomNavigation component.
  late FloatingBottomNavigationModel floatingBottomNavigationModel;

  @override
  void initState(BuildContext context) {
    floatingBottomNavigationModel =
        createModel(context, () => FloatingBottomNavigationModel());
  }

  @override
  void dispose() {
    inputPesquisarFocusNode?.dispose();
    inputPesquisarTextController?.dispose();

    tabBarController?.dispose();
    floatingBottomNavigationModel.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleted2;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleted1;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
