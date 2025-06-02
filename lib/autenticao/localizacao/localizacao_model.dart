import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'localizacao_widget.dart' show LocalizacaoWidget;
import 'package:flutter/material.dart';

class LocalizacaoModel extends FlutterFlowModel<LocalizacaoWidget> {
  ///  Local state fields for this page.

  LatLng? coordenadas;

  String? endereco;

  bool permissaoLocalizacao = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GeoCodeReverse)] action in Button widget.
  ApiCallResponse? addressReverse;
  // Stores action output result for [Bottom Sheet - CompAdicionarLocalizacao] action in Container widget.
  bool? retorno;
  bool isDataUploading_uploadDataNovaFoto = false;
  FFUploadedFile uploadedLocalFile_uploadDataNovaFoto =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataNovaFoto = '';

  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  UsuariosAppRow? usuarioCadastrado;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
