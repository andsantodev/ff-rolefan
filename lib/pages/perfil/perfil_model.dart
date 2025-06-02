import '/componentes/floating_bottom_navigation/floating_bottom_navigation_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'perfil_widget.dart' show PerfilWidget;
import 'package:flutter/material.dart';

class PerfilModel extends FlutterFlowModel<PerfilWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - appVersion] action in Perfil widget.
  String? appVersion;
  // Stores action output result for [Bottom Sheet - CompAtualizarLocalizacao] action in Container widget.
  bool? novoLocal;
  // Model for FloatingBottomNavigation component.
  late FloatingBottomNavigationModel floatingBottomNavigationModel;

  @override
  void initState(BuildContext context) {
    floatingBottomNavigationModel =
        createModel(context, () => FloatingBottomNavigationModel());
  }

  @override
  void dispose() {
    floatingBottomNavigationModel.dispose();
  }
}
