import '/backend/supabase/supabase.dart';
import '/componentes/comp_restricao_mobile/comp_restricao_mobile_widget.dart';
import '/componentes/floating_bottom_navigation/floating_bottom_navigation_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'pagina_testes_widget.dart' show PaginaTestesWidget;
import 'package:flutter/material.dart';

class PaginaTestesModel extends FlutterFlowModel<PaginaTestesWidget> {
  ///  Local state fields for this page.

  List<EventosRow> listaLugares = [];
  void addToListaLugares(EventosRow item) => listaLugares.add(item);
  void removeFromListaLugares(EventosRow item) => listaLugares.remove(item);
  void removeAtIndexFromListaLugares(int index) => listaLugares.removeAt(index);
  void insertAtIndexInListaLugares(int index, EventosRow item) =>
      listaLugares.insert(index, item);
  void updateListaLugaresAtIndex(int index, Function(EventosRow) updateFn) =>
      listaLugares[index] = updateFn(listaLugares[index]);

  String? pinoString;

  ///  State fields for stateful widgets in this page.

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
    floatingBottomNavigationModel.dispose();
    compRestricaoMobileModel.dispose();
  }
}
