import '/backend/supabase/supabase.dart';
import '/componentes/comp_restricao_mobile/comp_restricao_mobile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'notificacao_widget.dart' show NotificacaoWidget;
import 'package:flutter/material.dart';

class NotificacaoModel extends FlutterFlowModel<NotificacaoWidget> {
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

  DateTime? datePicked;
  // Model for CompRestricaoMobile component.
  late CompRestricaoMobileModel compRestricaoMobileModel;

  @override
  void initState(BuildContext context) {
    compRestricaoMobileModel =
        createModel(context, () => CompRestricaoMobileModel());
  }

  @override
  void dispose() {
    compRestricaoMobileModel.dispose();
  }
}
