import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/componentes/comp_atualizar_localizacao/comp_atualizar_localizacao_widget.dart';
import '/componentes/comp_card_evento/comp_card_evento_widget.dart';
import '/componentes/comp_opcoes_lista/comp_opcoes_lista_widget.dart';
import '/componentes/floating_bottom_navigation/floating_bottom_navigation_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'explorar_model.dart';
export 'explorar_model.dart';

class ExplorarWidget extends StatefulWidget {
  const ExplorarWidget({super.key});

  static String routeName = 'Explorar';
  static String routePath = '/explorar';

  @override
  State<ExplorarWidget> createState() => _ExplorarWidgetState();
}

class _ExplorarWidgetState extends State<ExplorarWidget>
    with TickerProviderStateMixin {
  late ExplorarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExplorarModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiFuncEventos =
          await EventosERestaurantesGroup.eventosPorDistanciaCall.call(
        token: currentJwtToken,
        distancia: valueOrDefault<double>(
          FFAppState().distanciaLocalizacao * 1000,
          0.0,
        ),
        lat: valueOrDefault<double>(
          functions.latitude(FFAppState().perfilUsuario.coordenadas),
          0.0,
        ),
        long: valueOrDefault<double>(
          functions.longitude(FFAppState().perfilUsuario.coordenadas),
          0.0,
        ),
      );

      FFAppState().EventosPorDistancia =
          ((_model.apiFuncEventos?.jsonBody ?? '')
                  .toList()
                  .map<FuncEventosPorDistanciaStruct?>(
                      FuncEventosPorDistanciaStruct.maybeFromMap)
                  .toList() as Iterable<FuncEventosPorDistanciaStruct?>)
              .withoutNulls
              .sortedList(keyOf: (e) => e.distMeters, desc: false)
              .toList()
              .cast<FuncEventosPorDistanciaStruct>();
      safeSetState(() {});
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          resizeToAvoidBottomInset: false,
          backgroundColor: FlutterFlowTheme.of(context).alternate,
          body: SafeArea(
            top: true,
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                constraints: BoxConstraints(
                  maxWidth: 430.0,
                ),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 70.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 15.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 8.0,
                                    borderWidth: 1.0,
                                    buttonSize: 40.0,
                                    fillColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    icon: Icon(
                                      Icons.arrow_back_ios_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 20.0,
                                    ),
                                    onPressed: () async {
                                      context.goNamed(
                                        HomeWidget.routeName,
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    },
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Explorar',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                      Container(
                                        width: 250.0,
                                        decoration: BoxDecoration(),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Color(0x52000000),
                                              useSafeArea: true,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      FocusScope.of(context)
                                                          .unfocus();
                                                      FocusManager
                                                          .instance.primaryFocus
                                                          ?.unfocus();
                                                    },
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child:
                                                          CompAtualizarLocalizacaoWidget(),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then((value) => safeSetState(() =>
                                                _model.novoLocal = value));

                                            if (_model.novoLocal == true) {
                                              await _model
                                                  .googleMapsController.future
                                                  .then(
                                                (c) => c.animateCamera(
                                                  CameraUpdate.newLatLng(functions
                                                      .convertOneStringToLatLngList(
                                                          FFAppState()
                                                              .perfilUsuario
                                                              .coordenadas)
                                                      .toGoogleMaps()),
                                                ),
                                              );
                                              _model.apiFuncEventosNovoLocal =
                                                  await EventosERestaurantesGroup
                                                      .eventosPorDistanciaCall
                                                      .call(
                                                token: currentJwtToken,
                                                distancia:
                                                    valueOrDefault<double>(
                                                  FFAppState()
                                                          .distanciaLocalizacao *
                                                      1000,
                                                  0.0,
                                                ),
                                                lat: valueOrDefault<double>(
                                                  functions.latitude(
                                                      FFAppState()
                                                          .perfilUsuario
                                                          .coordenadas),
                                                  0.0,
                                                ),
                                                long: valueOrDefault<double>(
                                                  functions.longitude(
                                                      FFAppState()
                                                          .perfilUsuario
                                                          .coordenadas),
                                                  0.0,
                                                ),
                                              );

                                              FFAppState()
                                                  .EventosPorDistancia = ((_model
                                                                  .apiFuncEventosNovoLocal
                                                                  ?.jsonBody ??
                                                              '')
                                                          .toList()
                                                          .map<FuncEventosPorDistanciaStruct?>(
                                                              FuncEventosPorDistanciaStruct
                                                                  .maybeFromMap)
                                                          .toList()
                                                      as Iterable<
                                                          FuncEventosPorDistanciaStruct?>)
                                                  .withoutNulls
                                                  .sortedList(
                                                      keyOf: (e) =>
                                                          e.distMeters,
                                                      desc: false)
                                                  .toList()
                                                  .cast<
                                                      FuncEventosPorDistanciaStruct>();
                                              FFAppState().update(() {});
                                              _model.apiFuncRestauranteNovoLocal =
                                                  await EventosERestaurantesGroup
                                                      .restaurantesPorDistanciaCall
                                                      .call(
                                                token: currentJwtToken,
                                                distanciaMaxima:
                                                    valueOrDefault<double>(
                                                  FFAppState()
                                                          .distanciaLocalizacao *
                                                      1000,
                                                  0.0,
                                                ),
                                                lat: valueOrDefault<double>(
                                                  functions.latitude(
                                                      FFAppState()
                                                          .perfilUsuario
                                                          .coordenadas),
                                                  0.0,
                                                ),
                                                long: valueOrDefault<double>(
                                                  functions.longitude(
                                                      FFAppState()
                                                          .perfilUsuario
                                                          .coordenadas),
                                                  0.0,
                                                ),
                                              );

                                              FFAppState()
                                                  .RestaurantesPorDistancia = ((_model
                                                                  .apiFuncRestauranteNovoLocal
                                                                  ?.jsonBody ??
                                                              '')
                                                          .toList()
                                                          .map<FuncRestaurantesPorDistanciaStruct?>(
                                                              FuncRestaurantesPorDistanciaStruct
                                                                  .maybeFromMap)
                                                          .toList()
                                                      as Iterable<
                                                          FuncRestaurantesPorDistanciaStruct?>)
                                                  .withoutNulls
                                                  .sortedList(
                                                      keyOf: (e) =>
                                                          e.distMeters,
                                                      desc: false)
                                                  .toList()
                                                  .cast<
                                                      FuncRestaurantesPorDistanciaStruct>();
                                              FFAppState().update(() {});
                                            }

                                            safeSetState(() {});
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Icon(
                                                FFIcons.kkmapPinFilled,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 14.0,
                                              ),
                                              Flexible(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 2.0, 0.0, 0.0),
                                                  child: Text(
                                                    FFAppState()
                                                        .perfilUsuario
                                                        .rua
                                                        .maybeHandleOverflow(
                                                          maxChars: 24,
                                                          replacement: '…',
                                                        ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                          lineHeight: 1.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        2.0, 0.0, 0.0, 0.0),
                                                child: FaIcon(
                                                  FontAwesomeIcons.chevronDown,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 14.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 8.0,
                                    buttonSize: 40.0,
                                    fillColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    icon: Icon(
                                      FFIcons.kkadjustmentsHorizontal,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return WebViewAware(
                                            child: GestureDetector(
                                              onTap: () {
                                                FocusScope.of(context)
                                                    .unfocus();
                                                FocusManager
                                                    .instance.primaryFocus
                                                    ?.unfocus();
                                              },
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: CompOpcoesListaWidget(
                                                  pagina: 'mapa',
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(
                                          () => _model.retorno = value));

                                      if (_model.retorno!) {
                                        _model.apiFuncAtualizaEventos =
                                            await EventosERestaurantesGroup
                                                .eventosPorDistanciaCall
                                                .call(
                                          token: currentJwtToken,
                                          distancia: valueOrDefault<double>(
                                            FFAppState().distanciaLocalizacao *
                                                1000,
                                            0.0,
                                          ),
                                          lat: valueOrDefault<double>(
                                            functions.latitude(FFAppState()
                                                .perfilUsuario
                                                .coordenadas),
                                            0.0,
                                          ),
                                          long: valueOrDefault<double>(
                                            functions.longitude(FFAppState()
                                                .perfilUsuario
                                                .coordenadas),
                                            0.0,
                                          ),
                                        );

                                        FFAppState()
                                            .EventosPorDistancia = ((_model
                                                            .apiFuncAtualizaEventos
                                                            ?.jsonBody ??
                                                        '')
                                                    .toList()
                                                    .map<FuncEventosPorDistanciaStruct?>(
                                                        FuncEventosPorDistanciaStruct
                                                            .maybeFromMap)
                                                    .toList()
                                                as Iterable<
                                                    FuncEventosPorDistanciaStruct?>)
                                            .withoutNulls
                                            .sortedList(
                                                keyOf: (e) => e.distMeters,
                                                desc: false)
                                            .toList()
                                            .cast<
                                                FuncEventosPorDistanciaStruct>();
                                        FFAppState().update(() {});
                                        _model.apiFuncAtualizaRestaurante =
                                            await EventosERestaurantesGroup
                                                .restaurantesPorDistanciaCall
                                                .call(
                                          token: currentJwtToken,
                                          distanciaMaxima:
                                              valueOrDefault<double>(
                                            FFAppState().distanciaLocalizacao *
                                                1000,
                                            0.0,
                                          ),
                                          lat: valueOrDefault<double>(
                                            functions.latitude(FFAppState()
                                                .perfilUsuario
                                                .coordenadas),
                                            0.0,
                                          ),
                                          long: valueOrDefault<double>(
                                            functions.longitude(FFAppState()
                                                .perfilUsuario
                                                .coordenadas),
                                            0.0,
                                          ),
                                        );

                                        FFAppState()
                                            .RestaurantesPorDistancia = ((_model
                                                            .apiFuncAtualizaRestaurante
                                                            ?.jsonBody ??
                                                        '')
                                                    .toList()
                                                    .map<FuncRestaurantesPorDistanciaStruct?>(
                                                        FuncRestaurantesPorDistanciaStruct
                                                            .maybeFromMap)
                                                    .toList()
                                                as Iterable<
                                                    FuncRestaurantesPorDistanciaStruct?>)
                                            .withoutNulls
                                            .sortedList(
                                                keyOf: (e) => e.distMeters,
                                                desc: false)
                                            .toList()
                                            .cast<
                                                FuncRestaurantesPorDistanciaStruct>();
                                        FFAppState().update(() {});
                                      }

                                      safeSetState(() {});
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                child: Builder(
                                  builder: (context) => FlutterFlowGoogleMap(
                                    controller: _model.googleMapsController,
                                    onCameraIdle: (latLng) => safeSetState(
                                        () => _model.googleMapsCenter = latLng),
                                    initialLocation: _model.googleMapsCenter ??=
                                        functions.convertOneStringToLatLngList(
                                            FFAppState()
                                                .perfilUsuario
                                                .coordenadas),
                                    markers: (_model.showEventos == true
                                            ? functions
                                                .convertStringsToLatLngList(
                                                    FFAppState()
                                                        .EventosPorDistancia
                                                        .where((e) =>
                                                            e.status ==
                                                            'Publicado')
                                                        .toList()
                                                        .map((e) =>
                                                            e.coordenadas)
                                                        .toList())
                                            : functions
                                                .convertStringsToLatLngList(
                                                    FFAppState()
                                                        .RestaurantesPorDistancia
                                                        .where((e) =>
                                                            e.status ==
                                                            'Publicado')
                                                        .toList()
                                                        .map((e) =>
                                                            e.coordenadas)
                                                        .toList()))
                                        .map(
                                          (marker) => FlutterFlowMarker(
                                            marker.serialize(),
                                            marker,
                                            () async {
                                              _model.pino = _model
                                                  .googleMapsCenter
                                                  ?.toString();
                                              safeSetState(() {});
                                              if (_model.showEventos) {
                                                await showAlignedDialog(
                                                  barrierColor:
                                                      Colors.transparent,
                                                  context: context,
                                                  isGlobal: false,
                                                  avoidOverflow: true,
                                                  targetAnchor:
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  followerAnchor:
                                                      AlignmentDirectional(
                                                              0.0, -1.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  builder: (dialogContext) {
                                                    return Material(
                                                      color: Colors.transparent,
                                                      child: WebViewAware(
                                                        child: GestureDetector(
                                                          onTap: () {
                                                            FocusScope.of(
                                                                    dialogContext)
                                                                .unfocus();
                                                            FocusManager
                                                                .instance
                                                                .primaryFocus
                                                                ?.unfocus();
                                                          },
                                                          child:
                                                              CompCardEventoWidget(
                                                            eventoSelecionado: FFAppState()
                                                                .EventosPorDistancia
                                                                .where((e) =>
                                                                    e.coordenadas ==
                                                                    _model.pino)
                                                                .toList()
                                                                .firstOrNull,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              } else {
                                                await showAlignedDialog(
                                                  barrierColor:
                                                      Colors.transparent,
                                                  context: context,
                                                  isGlobal: false,
                                                  avoidOverflow: true,
                                                  targetAnchor:
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  followerAnchor:
                                                      AlignmentDirectional(
                                                              0.0, -1.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  builder: (dialogContext) {
                                                    return Material(
                                                      color: Colors.transparent,
                                                      child: WebViewAware(
                                                        child: GestureDetector(
                                                          onTap: () {
                                                            FocusScope.of(
                                                                    dialogContext)
                                                                .unfocus();
                                                            FocusManager
                                                                .instance
                                                                .primaryFocus
                                                                ?.unfocus();
                                                          },
                                                          child:
                                                              CompCardEventoWidget(
                                                            restauranteSelecionado:
                                                                FFAppState()
                                                                    .RestaurantesPorDistancia
                                                                    .where((e) =>
                                                                        e.coordenadas ==
                                                                        _model
                                                                            .pino)
                                                                    .toList()
                                                                    .firstOrNull,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              }
                                            },
                                          ),
                                        )
                                        .toList(),
                                    markerColor: GoogleMarkerColor.red,
                                    mapType: MapType.normal,
                                    style: GoogleMapStyle.standard,
                                    initialZoom: 15.0,
                                    allowInteraction: true,
                                    allowZoom: true,
                                    showZoomControls: true,
                                    showLocation: false,
                                    showCompass: false,
                                    showMapToolbar: false,
                                    showTraffic: false,
                                    centerMapOnMarkerTap: true,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 58.0),
                            child: Container(
                              height: 252.0,
                              decoration: BoxDecoration(),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment(0.0, 0),
                                    child: TabBar(
                                      labelColor:
                                          FlutterFlowTheme.of(context).primary,
                                      unselectedLabelColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                      unselectedLabelStyle: TextStyle(),
                                      indicatorColor:
                                          FlutterFlowTheme.of(context).primary,
                                      tabs: [
                                        Tab(
                                          text: 'Rolês',
                                        ),
                                        Tab(
                                          text: 'Restaurantes',
                                        ),
                                      ],
                                      controller: _model.tabBarController,
                                      onTap: (i) async {
                                        [
                                          () async {
                                            _model.showEventos = true;
                                            safeSetState(() {});
                                            _model.apiFuncEventosTab =
                                                await EventosERestaurantesGroup
                                                    .eventosPorDistanciaCall
                                                    .call(
                                              token: currentJwtToken,
                                              distancia: valueOrDefault<double>(
                                                FFAppState()
                                                        .distanciaLocalizacao *
                                                    1000,
                                                0.0,
                                              ),
                                              lat: valueOrDefault<double>(
                                                functions.latitude(FFAppState()
                                                    .perfilUsuario
                                                    .coordenadas),
                                                0.0,
                                              ),
                                              long: valueOrDefault<double>(
                                                functions.longitude(FFAppState()
                                                    .perfilUsuario
                                                    .coordenadas),
                                                0.0,
                                              ),
                                            );

                                            FFAppState()
                                                .EventosPorDistancia = ((_model
                                                                .apiFuncEventosTab
                                                                ?.jsonBody ??
                                                            '')
                                                        .toList()
                                                        .map<FuncEventosPorDistanciaStruct?>(
                                                            FuncEventosPorDistanciaStruct
                                                                .maybeFromMap)
                                                        .toList()
                                                    as Iterable<
                                                        FuncEventosPorDistanciaStruct?>)
                                                .withoutNulls
                                                .sortedList(
                                                    keyOf: (e) => e.distMeters,
                                                    desc: false)
                                                .toList()
                                                .cast<
                                                    FuncEventosPorDistanciaStruct>();
                                            FFAppState().update(() {});

                                            safeSetState(() {});
                                          },
                                          () async {
                                            _model.showEventos = false;
                                            safeSetState(() {});
                                            _model.apiFuncRestauranteTab =
                                                await EventosERestaurantesGroup
                                                    .restaurantesPorDistanciaCall
                                                    .call(
                                              token: currentJwtToken,
                                              distanciaMaxima:
                                                  valueOrDefault<double>(
                                                FFAppState()
                                                        .distanciaLocalizacao *
                                                    1000,
                                                0.0,
                                              ),
                                              lat: valueOrDefault<double>(
                                                functions.latitude(FFAppState()
                                                    .perfilUsuario
                                                    .coordenadas),
                                                0.0,
                                              ),
                                              long: valueOrDefault<double>(
                                                functions.longitude(FFAppState()
                                                    .perfilUsuario
                                                    .coordenadas),
                                                0.0,
                                              ),
                                            );

                                            FFAppState()
                                                .RestaurantesPorDistancia = ((_model
                                                                .apiFuncRestauranteTab
                                                                ?.jsonBody ??
                                                            '')
                                                        .toList()
                                                        .map<FuncRestaurantesPorDistanciaStruct?>(
                                                            FuncRestaurantesPorDistanciaStruct
                                                                .maybeFromMap)
                                                        .toList()
                                                    as Iterable<
                                                        FuncRestaurantesPorDistanciaStruct?>)
                                                .withoutNulls
                                                .sortedList(
                                                    keyOf: (e) => e.distMeters,
                                                    desc: false)
                                                .toList()
                                                .cast<
                                                    FuncRestaurantesPorDistanciaStruct>();
                                            FFAppState().update(() {});

                                            safeSetState(() {});
                                          }
                                        ][i]();
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    child: TabBarView(
                                      controller: _model.tabBarController,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      children: [
                                        KeepAliveWidgetWrapper(
                                          builder: (context) => Container(
                                            height: 214.0,
                                            decoration: BoxDecoration(),
                                            child: Builder(
                                              builder: (context) {
                                                if (FFAppState()
                                                    .EventosPorDistancia
                                                    .isNotEmpty) {
                                                  return Builder(
                                                    builder: (context) {
                                                      final listaEventos =
                                                          FFAppState()
                                                              .EventosPorDistancia
                                                              .where((e) =>
                                                                  e.status ==
                                                                  'Publicado')
                                                              .toList();

                                                      return ListView.separated(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                          16.0,
                                                          0,
                                                          16.0,
                                                          0,
                                                        ),
                                                        primary: false,
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        itemCount:
                                                            listaEventos.length,
                                                        separatorBuilder:
                                                            (_, __) => SizedBox(
                                                                width: 20.0),
                                                        itemBuilder: (context,
                                                            listaEventosIndex) {
                                                          final listaEventosItem =
                                                              listaEventos[
                                                                  listaEventosIndex];
                                                          return Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        15.0,
                                                                        0.0,
                                                                        15.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                await _model
                                                                    .googleMapsController
                                                                    .future
                                                                    .then(
                                                                  (c) => c
                                                                      .animateCamera(
                                                                    CameraUpdate.newLatLng(functions
                                                                        .strtoLatLngAPAGAR(
                                                                            listaEventosItem.coordenadas)
                                                                        .toGoogleMaps()),
                                                                  ),
                                                                );
                                                              },
                                                              child: Material(
                                                                color: Colors
                                                                    .transparent,
                                                                elevation: 1.0,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            8.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children:
                                                                          [
                                                                        Hero(
                                                                          tag:
                                                                              '${listaEventosItem.imagemBanner}',
                                                                          transitionOnUserGestures:
                                                                              true,
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            child:
                                                                                Image.network(
                                                                              '${listaEventosItem.imagemBanner}',
                                                                              width: 140.0,
                                                                              height: double.infinity,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              170.0,
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  if (listaEventosItem.estilo.isNotEmpty)
                                                                                    Builder(
                                                                                      builder: (context) {
                                                                                        if (listaEventosItem.status != 'Finalizado') {
                                                                                          return Container(
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              borderRadius: BorderRadius.circular(25.0),
                                                                                            ),
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 4.0),
                                                                                              child: Text(
                                                                                                listaEventosItem.estilo.firstOrNull!,
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      font: GoogleFonts.inter(
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                      color: FlutterFlowTheme.of(context).info,
                                                                                                      fontSize: 10.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        } else {
                                                                                          return Container(
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                              borderRadius: BorderRadius.circular(25.0),
                                                                                            ),
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 4.0),
                                                                                              child: Text(
                                                                                                valueOrDefault<String>(
                                                                                                  listaEventosItem.status,
                                                                                                  '-',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      font: GoogleFonts.inter(
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                      color: FlutterFlowTheme.of(context).info,
                                                                                                      fontSize: 10.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                      },
                                                                                    ),
                                                                                  Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        valueOrDefault<String>(
                                                                                          listaEventosItem.nomeEvento,
                                                                                          '-',
                                                                                        ),
                                                                                        maxLines: 2,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              font: GoogleFonts.inter(
                                                                                                fontWeight: FontWeight.w600,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                              ),
                                                                                              fontSize: 16.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w600,
                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        '${listaEventosItem.dataFinal != '' ? 'De ${dateTimeFormat(
                                                                                            "dd/MM",
                                                                                            functions.stringToDateTime(listaEventosItem.data),
                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                          )} até ${dateTimeFormat(
                                                                                            "dd/MM",
                                                                                            functions.stringToDateTime(listaEventosItem.dataFinal),
                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                          )}' : functions.capitalizeWeekday(listaEventosItem.data)} - às ${dateTimeFormat(
                                                                                          "Hm",
                                                                                          functions.stringToTime(listaEventosItem.horarioInicial),
                                                                                          locale: FFLocalizations.of(context).languageCode,
                                                                                        )}h',
                                                                                        maxLines: 2,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              font: GoogleFonts.inter(
                                                                                                fontWeight: FontWeight.w500,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                              ),
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              fontSize: 14.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                            ),
                                                                                      ),
                                                                                      if (listaEventosItem.nomeLocal != '')
                                                                                        Text(
                                                                                          valueOrDefault<String>(
                                                                                            listaEventosItem.nomeLocal,
                                                                                            '-',
                                                                                          ),
                                                                                          maxLines: 2,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                font: GoogleFonts.inter(
                                                                                                  fontWeight: FontWeight.normal,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                ),
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                fontSize: 14.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.normal,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                              ),
                                                                                        ),
                                                                                    ].divide(SizedBox(height: 6.0)),
                                                                                  ),
                                                                                ].divide(SizedBox(height: 8.0)),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Builder(
                                                                                    builder: (context) {
                                                                                      if (listaEventosItem.valor != 0.0) {
                                                                                        return Text(
                                                                                          formatNumber(
                                                                                            listaEventosItem.valor,
                                                                                            formatType: FormatType.custom,
                                                                                            currency: 'R\$ ',
                                                                                            format: '#,##0.00',
                                                                                            locale: 'pt_BR',
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                font: GoogleFonts.inter(
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                ),
                                                                                                fontSize: 14.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w600,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                              ),
                                                                                        );
                                                                                      } else {
                                                                                        return Text(
                                                                                          'Gratuito',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                font: GoogleFonts.inter(
                                                                                                  fontWeight: FontWeight.w500,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                ),
                                                                                                fontSize: 14.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w500,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                              ),
                                                                                        );
                                                                                      }
                                                                                    },
                                                                                  ),
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(1.0, 0.0),
                                                                                    child: FFButtonWidget(
                                                                                      onPressed: () async {
                                                                                        _model.checkConnectionEvento = await actions.checkInternet();
                                                                                        if (_model.checkConnectionEvento == true) {
                                                                                          context.pushNamed(
                                                                                            RolesDetalhesWidget.routeName,
                                                                                            queryParameters: {
                                                                                              'banner': serializeParam(
                                                                                                '${listaEventosItem.imagemBanner}',
                                                                                                ParamType.String,
                                                                                              ),
                                                                                              'nomeEvento': serializeParam(
                                                                                                listaEventosItem.nomeEvento,
                                                                                                ParamType.String,
                                                                                              ),
                                                                                              'valor': serializeParam(
                                                                                                listaEventosItem.valor,
                                                                                                ParamType.double,
                                                                                              ),
                                                                                              'endereco': serializeParam(
                                                                                                listaEventosItem.endereco,
                                                                                                ParamType.String,
                                                                                              ),
                                                                                              'acessibilidade': serializeParam(
                                                                                                listaEventosItem.acessiblidade,
                                                                                                ParamType.bool,
                                                                                              ),
                                                                                              'data': serializeParam(
                                                                                                listaEventosItem.data,
                                                                                                ParamType.String,
                                                                                              ),
                                                                                              'horarioInicial': serializeParam(
                                                                                                listaEventosItem.horarioInicial,
                                                                                                ParamType.String,
                                                                                              ),
                                                                                              'horarioFinal': serializeParam(
                                                                                                listaEventosItem.horarioFinal,
                                                                                                ParamType.String,
                                                                                              ),
                                                                                              'descricao': serializeParam(
                                                                                                listaEventosItem.descricao,
                                                                                                ParamType.String,
                                                                                              ),
                                                                                              'nomeParceiro': serializeParam(
                                                                                                listaEventosItem.nomeParceiro,
                                                                                                ParamType.String,
                                                                                              ),
                                                                                              'facebook': serializeParam(
                                                                                                listaEventosItem.facebook,
                                                                                                ParamType.String,
                                                                                              ),
                                                                                              'instagram': serializeParam(
                                                                                                listaEventosItem.instagram,
                                                                                                ParamType.String,
                                                                                              ),
                                                                                              'tiktok': serializeParam(
                                                                                                listaEventosItem.tiktok,
                                                                                                ParamType.String,
                                                                                              ),
                                                                                              'site': serializeParam(
                                                                                                listaEventosItem.tiktok,
                                                                                                ParamType.String,
                                                                                              ),
                                                                                              'id': serializeParam(
                                                                                                listaEventosItem.id,
                                                                                                ParamType.int,
                                                                                              ),
                                                                                              'estilo': serializeParam(
                                                                                                listaEventosItem.estilo,
                                                                                                ParamType.String,
                                                                                                isList: true,
                                                                                              ),
                                                                                              'status': serializeParam(
                                                                                                listaEventosItem.status,
                                                                                                ParamType.String,
                                                                                              ),
                                                                                              'nomeLocal': serializeParam(
                                                                                                listaEventosItem.nomeLocal,
                                                                                                ParamType.String,
                                                                                              ),
                                                                                              'coordenadas': serializeParam(
                                                                                                functions.convertOneStringToLatLngList(listaEventosItem.coordenadas),
                                                                                                ParamType.LatLng,
                                                                                              ),
                                                                                              'ingresso': serializeParam(
                                                                                                listaEventosItem.linkIngresso,
                                                                                                ParamType.String,
                                                                                              ),
                                                                                            }.withoutNulls,
                                                                                          );
                                                                                        } else {
                                                                                          context.pushNamed(OfflineWidget.routeName);
                                                                                        }

                                                                                        safeSetState(() {});
                                                                                      },
                                                                                      text: 'Detalhes',
                                                                                      options: FFButtonOptions(
                                                                                        height: 28.0,
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                              font: GoogleFonts.inter(
                                                                                                fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                              ),
                                                                                              color: Colors.white,
                                                                                              fontSize: 12.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                            ),
                                                                                        elevation: 0.0,
                                                                                        borderSide: BorderSide(
                                                                                          color: Colors.transparent,
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(4.0),
                                                                                      ),
                                                                                      showLoadingIndicator: false,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              width: 8.0)),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  );
                                                } else {
                                                  return Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Container(
                                                      width: 310.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            'Ops! Não encontramos\neventos na sua região.',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                          Text(
                                                            'Atualmente, não há eventos disponíveis a uma distância de ${FFAppState().distanciaLocalizacao.toString()} km. Confira novamente mais tarde ou experimente ampliar a sua busca!',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            height: 12.0)),
                                                      ),
                                                    ),
                                                  );
                                                }
                                              },
                                            ),
                                          ),
                                        ),
                                        KeepAliveWidgetWrapper(
                                          builder: (context) => Container(
                                            height: 214.0,
                                            decoration: BoxDecoration(),
                                            child: Builder(
                                              builder: (context) {
                                                if (FFAppState()
                                                    .RestaurantesPorDistancia
                                                    .isNotEmpty) {
                                                  return Builder(
                                                    builder: (context) {
                                                      final listaRestaurantes =
                                                          FFAppState()
                                                              .RestaurantesPorDistancia
                                                              .where((e) =>
                                                                  e.status ==
                                                                  'Publicado')
                                                              .toList();

                                                      return ListView.separated(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                          16.0,
                                                          0,
                                                          16.0,
                                                          0,
                                                        ),
                                                        primary: false,
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        itemCount:
                                                            listaRestaurantes
                                                                .length,
                                                        separatorBuilder:
                                                            (_, __) => SizedBox(
                                                                width: 20.0),
                                                        itemBuilder: (context,
                                                            listaRestaurantesIndex) {
                                                          final listaRestaurantesItem =
                                                              listaRestaurantes[
                                                                  listaRestaurantesIndex];
                                                          return Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        15.0,
                                                                        0.0,
                                                                        15.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                await _model
                                                                    .googleMapsController
                                                                    .future
                                                                    .then(
                                                                  (c) => c
                                                                      .animateCamera(
                                                                    CameraUpdate.newLatLng(functions
                                                                        .strtoLatLngAPAGAR(
                                                                            listaRestaurantesItem.coordenadas)
                                                                        .toGoogleMaps()),
                                                                  ),
                                                                );
                                                              },
                                                              child: Material(
                                                                color: Colors
                                                                    .transparent,
                                                                elevation: 1.0,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  height: 162.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            8.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children:
                                                                          [
                                                                        Hero(
                                                                          tag:
                                                                              '${listaRestaurantesItem.logomarca}',
                                                                          transitionOnUserGestures:
                                                                              true,
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            child:
                                                                                Image.network(
                                                                              '${listaRestaurantesItem.logomarca}',
                                                                              width: 140.0,
                                                                              height: double.infinity,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              170.0,
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    valueOrDefault<String>(
                                                                                      listaRestaurantesItem.nome,
                                                                                      '-',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.inter(
                                                                                            fontWeight: FontWeight.w600,
                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                          ),
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w600,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    functions.extractAddressUntilNeighborhood(listaRestaurantesItem.endereco),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.inter(
                                                                                            fontWeight: FontWeight.normal,
                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                          ),
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          fontSize: 14.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.normal,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                  ),
                                                                                ].divide(SizedBox(height: 8.0)),
                                                                              ),
                                                                              Align(
                                                                                alignment: AlignmentDirectional(1.0, 0.0),
                                                                                child: FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    _model.checkConnectionRestaurate = await actions.checkInternet();
                                                                                    if (_model.checkConnectionRestaurate == true) {
                                                                                      context.pushNamed(
                                                                                        RestaurantesDetalhesWidget.routeName,
                                                                                        queryParameters: {
                                                                                          'id': serializeParam(
                                                                                            listaRestaurantesItem.id,
                                                                                            ParamType.int,
                                                                                          ),
                                                                                          'nome': serializeParam(
                                                                                            listaRestaurantesItem.nome,
                                                                                            ParamType.String,
                                                                                          ),
                                                                                          'banner': serializeParam(
                                                                                            listaRestaurantesItem.imagemBanner,
                                                                                            ParamType.String,
                                                                                          ),
                                                                                          'logomarca': serializeParam(
                                                                                            listaRestaurantesItem.logomarca,
                                                                                            ParamType.String,
                                                                                          ),
                                                                                          'endereco': serializeParam(
                                                                                            listaRestaurantesItem.endereco,
                                                                                            ParamType.String,
                                                                                          ),
                                                                                          'acessibilidade': serializeParam(
                                                                                            listaRestaurantesItem.acessibilidade,
                                                                                            ParamType.bool,
                                                                                          ),
                                                                                          'horaAbertura': serializeParam(
                                                                                            listaRestaurantesItem.horarioAbertura,
                                                                                            ParamType.String,
                                                                                          ),
                                                                                          'horaFechamento': serializeParam(
                                                                                            listaRestaurantesItem.horarioFechamento,
                                                                                            ParamType.String,
                                                                                          ),
                                                                                          'telefone': serializeParam(
                                                                                            listaRestaurantesItem.telefone,
                                                                                            ParamType.String,
                                                                                          ),
                                                                                          'descricao': serializeParam(
                                                                                            listaRestaurantesItem.descricao,
                                                                                            ParamType.String,
                                                                                          ),
                                                                                          'facebook': serializeParam(
                                                                                            listaRestaurantesItem.facebook,
                                                                                            ParamType.String,
                                                                                          ),
                                                                                          'instagram': serializeParam(
                                                                                            listaRestaurantesItem.instagram,
                                                                                            ParamType.String,
                                                                                          ),
                                                                                          'tiktok': serializeParam(
                                                                                            listaRestaurantesItem.tiktok,
                                                                                            ParamType.String,
                                                                                          ),
                                                                                          'site': serializeParam(
                                                                                            listaRestaurantesItem.site,
                                                                                            ParamType.String,
                                                                                          ),
                                                                                          'comentarios': serializeParam(
                                                                                            listaRestaurantesItem.comentarios,
                                                                                            ParamType.String,
                                                                                            isList: true,
                                                                                          ),
                                                                                          'mediaAvaliacao': serializeParam(
                                                                                            listaRestaurantesItem.mediaAvaliacoes,
                                                                                            ParamType.double,
                                                                                          ),
                                                                                          'coordenadas': serializeParam(
                                                                                            functions.convertOneStringToLatLngList(listaRestaurantesItem.coordenadas),
                                                                                            ParamType.LatLng,
                                                                                          ),
                                                                                        }.withoutNulls,
                                                                                        extra: <String, dynamic>{
                                                                                          kTransitionInfoKey: TransitionInfo(
                                                                                            hasTransition: true,
                                                                                            transitionType: PageTransitionType.rightToLeft,
                                                                                          ),
                                                                                        },
                                                                                      );
                                                                                    } else {
                                                                                      context.pushNamed(OfflineWidget.routeName);
                                                                                    }

                                                                                    safeSetState(() {});
                                                                                  },
                                                                                  text: 'Detalhes',
                                                                                  options: FFButtonOptions(
                                                                                    height: 28.0,
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                    iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                          font: GoogleFonts.inter(
                                                                                            fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                            fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                          ),
                                                                                          color: Colors.white,
                                                                                          fontSize: 12.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                        ),
                                                                                    elevation: 0.0,
                                                                                    borderSide: BorderSide(
                                                                                      color: Colors.transparent,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(4.0),
                                                                                  ),
                                                                                  showLoadingIndicator: false,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              width: 8.0)),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  );
                                                } else {
                                                  return Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Container(
                                                      width: 320.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            'Ops! Parece que não encontramos\nrestaurantes na sua região.',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                          Text(
                                                            'Atualmente, não há restaurantes disponíveis a uma distância de ${FFAppState().distanciaLocalizacao.toString()} km. Confira novamente mais tarde ou experimente ampliar a sua busca!',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            height: 12.0)),
                                                      ),
                                                    ),
                                                  );
                                                }
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: wrapWithModel(
                        model: _model.floatingBottomNavigationModel,
                        updateCallback: () => safeSetState(() {}),
                        child: FloatingBottomNavigationWidget(
                          selectedPage: 'explorar',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
