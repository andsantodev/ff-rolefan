import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'comp_atualizar_localizacao_widget.dart'
    show CompAtualizarLocalizacaoWidget;
import 'package:flutter/material.dart';

class CompAtualizarLocalizacaoModel
    extends FlutterFlowModel<CompAtualizarLocalizacaoWidget> {
  ///  Local state fields for this component.

  String? endereco;

  LatLng? coordenadas;

  bool showLista = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for inputPesquisarMake widget.
  FocusNode? inputPesquisarMakeFocusNode;
  TextEditingController? inputPesquisarMakeTextController;
  String? Function(BuildContext, String?)?
      inputPesquisarMakeTextControllerValidator;
  // Stores action output result for [Backend Call - API (Make Google Autocomplete)] action in inputPesquisarMake widget.
  ApiCallResponse? apiResultEnderecoMake;
  // Stores action output result for [Backend Call - API (GeoCodeReverse)] action in Button widget.
  ApiCallResponse? addressReverse;
  // Stores action output result for [Backend Call - API (Make Google Details)] action in Container widget.
  ApiCallResponse? apiResulDetailsMake;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputPesquisarMakeFocusNode?.dispose();
    inputPesquisarMakeTextController?.dispose();
  }
}
