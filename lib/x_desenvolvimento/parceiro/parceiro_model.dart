import '/backend/supabase/supabase.dart';
import '/componentes/comp_restricao_mobile/comp_restricao_mobile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'parceiro_widget.dart' show ParceiroWidget;
import 'package:flutter/material.dart';

class ParceiroModel extends FlutterFlowModel<ParceiroWidget> {
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

  int limit = 5;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Model for CompRestricaoMobile component.
  late CompRestricaoMobileModel compRestricaoMobileModel;

  @override
  void initState(BuildContext context) {
    compRestricaoMobileModel =
        createModel(context, () => CompRestricaoMobileModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    compRestricaoMobileModel.dispose();
  }
}
