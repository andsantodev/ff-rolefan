import '/backend/api_requests/api_calls.dart';
import '/componentes/floating_bottom_navigation/floating_bottom_navigation_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'explorar_widget.dart' show ExplorarWidget;
import 'package:flutter/material.dart';

class ExplorarModel extends FlutterFlowModel<ExplorarWidget> {
  ///  Local state fields for this page.

  String? pino;

  String? enderecoEscolhido;

  bool showEventos = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Eventos por Distancia)] action in Explorar widget.
  ApiCallResponse? apiFuncEventos;
  // Stores action output result for [Bottom Sheet - CompAtualizarLocalizacao] action in Row widget.
  bool? novoLocal;
  // Stores action output result for [Backend Call - API (Eventos por Distancia)] action in Row widget.
  ApiCallResponse? apiFuncEventosNovoLocal;
  // Stores action output result for [Backend Call - API (Restaurantes por Distancia)] action in Row widget.
  ApiCallResponse? apiFuncRestauranteNovoLocal;
  // Stores action output result for [Bottom Sheet - CompOpcoesLista] action in IconButton widget.
  bool? retorno;
  // Stores action output result for [Backend Call - API (Eventos por Distancia)] action in IconButton widget.
  ApiCallResponse? apiFuncAtualizaEventos;
  // Stores action output result for [Backend Call - API (Restaurantes por Distancia)] action in IconButton widget.
  ApiCallResponse? apiFuncAtualizaRestaurante;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Stores action output result for [Backend Call - API (Eventos por Distancia)] action in Tab widget.
  ApiCallResponse? apiFuncEventosTab;
  // Stores action output result for [Custom Action - checkInternet] action in Button widget.
  bool? checkConnectionEvento;
  // Stores action output result for [Backend Call - API (Restaurantes por Distancia)] action in Tab widget.
  ApiCallResponse? apiFuncRestauranteTab;
  // Stores action output result for [Custom Action - checkInternet] action in Button widget.
  bool? checkConnectionRestaurate;
  // Model for FloatingBottomNavigation component.
  late FloatingBottomNavigationModel floatingBottomNavigationModel;

  @override
  void initState(BuildContext context) {
    floatingBottomNavigationModel =
        createModel(context, () => FloatingBottomNavigationModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    floatingBottomNavigationModel.dispose();
  }
}
