import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  bool? favorito = false;

  int indexBannerAtivo = 0;

  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? tutoriaHomeController;
  // Stores action output result for [Custom Action - checkInternet] action in Home widget.
  bool? checkConnectionHome;
  // Stores action output result for [Custom Action - checkInternet] action in IconButton widget.
  bool? checkConnectionNotificacao;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 0;

  // Stores action output result for [Custom Action - checkInternet] action in Column widget.
  bool? checkConnectionRes;
  // Stores action output result for [Custom Action - checkInternet] action in Column widget.
  bool? checkConnectionFilmes;
  // Stores action output result for [Custom Action - checkInternet] action in Container widget.
  bool? checkConnectionEvento;
  // Stores action output result for [Custom Action - checkInternet] action in Text widget.
  bool? checkConnectionRes2;
  // Stores action output result for [Custom Action - checkInternet] action in Container widget.
  bool? checkConnectionRes3;
  // Stores action output result for [Custom Action - checkInternet] action in Container widget.
  bool? checkConnectionHome2;
  // Stores action output result for [Custom Action - checkInternet] action in Container widget.
  bool? checkConnectionExplore;
  // Stores action output result for [Custom Action - checkInternet] action in Container widget.
  bool? checkConnectionFavoritos;
  // Stores action output result for [Custom Action - checkInternet] action in Container widget.
  bool? checkConnectionPerfil;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tutoriaHomeController?.finish();
  }
}
