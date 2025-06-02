import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'roles_detalhes_widget.dart' show RolesDetalhesWidget;
import 'package:flutter/material.dart';

class RolesDetalhesModel extends FlutterFlowModel<RolesDetalhesWidget> {
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

  // Stores action output result for [Backend Call - Query Rows] action in RolesDetalhes widget.
  List<FavoritosRow>? favoriteResult;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // Stores action output result for [Backend Call - Insert Row] action in IconButton widget.
  FavoritosRow? addFavorito;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
