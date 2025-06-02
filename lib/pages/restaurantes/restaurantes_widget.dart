import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/componentes/comp_atualizar_localizacao/comp_atualizar_localizacao_widget.dart';
import '/componentes/comp_opcoes_lista/comp_opcoes_lista_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'restaurantes_model.dart';
export 'restaurantes_model.dart';

class RestaurantesWidget extends StatefulWidget {
  const RestaurantesWidget({super.key});

  static String routeName = 'Restaurantes';
  static String routePath = '/restaurantes';

  @override
  State<RestaurantesWidget> createState() => _RestaurantesWidgetState();
}

class _RestaurantesWidgetState extends State<RestaurantesWidget> {
  late RestaurantesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RestaurantesModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.favoriteResult = await FavoritosTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'id_cliente',
          currentUserUid,
        ),
      );
      _model.salvos = _model.favoriteResult!.toList().cast<FavoritosRow>();
      safeSetState(() {});
    });

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
      child: Scaffold(
        key: scaffoldKey,
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
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 70.0,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 8.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            fillColor: FlutterFlowTheme.of(context).alternate,
                            icon: Icon(
                              Icons.arrow_back_ios_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 20.0,
                            ),
                            onPressed: () async {
                              context.goNamed(
                                HomeWidget.routeName,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
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
                                'Restaurantes',
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
                                    var _shouldSetState = false;
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Color(0x52000000),
                                      useSafeArea: true,
                                      context: context,
                                      builder: (context) {
                                        return WebViewAware(
                                          child: GestureDetector(
                                            onTap: () {
                                              FocusScope.of(context).unfocus();
                                              FocusManager.instance.primaryFocus
                                                  ?.unfocus();
                                            },
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child:
                                                  CompAtualizarLocalizacaoWidget(),
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(
                                        () => _model.novoLocal = value));

                                    _shouldSetState = true;
                                    if (_model.novoLocal!) {
                                      safeSetState(() {
                                        FFAppState()
                                            .clearCacheRestaurantesCache();
                                        _model.apiRequestCompleted = false;
                                      });
                                      await _model.waitForApiRequestCompleted();
                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    } else {
                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    }

                                    if (_shouldSetState) safeSetState(() {});
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        FFIcons.kkmapPinFilled,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 12.0,
                                      ),
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 2.0, 0.0, 0.0),
                                          child: Text(
                                            FFAppState()
                                                .perfilUsuario
                                                .rua
                                                .maybeHandleOverflow(
                                                  maxChars: 24,
                                                  replacement: '…',
                                                ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.inter(
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            2.0, 0.0, 0.0, 0.0),
                                        child: FaIcon(
                                          FontAwesomeIcons.chevronDown,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 14.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(height: 4.0)),
                          ),
                          FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            fillColor: FlutterFlowTheme.of(context).alternate,
                            icon: Icon(
                              FFIcons.kkadjustmentsHorizontal,
                              color: FlutterFlowTheme.of(context).primaryText,
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
                                        FocusScope.of(context).unfocus();
                                        FocusManager.instance.primaryFocus
                                            ?.unfocus();
                                      },
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: CompOpcoesListaWidget(
                                          pagina: 'restaurantes',
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) =>
                                  safeSetState(() => _model.retorno = value));

                              if (_model.retorno!) {
                                safeSetState(() {
                                  FFAppState().clearCacheRestaurantesCache();
                                  _model.apiRequestCompleted = false;
                                });
                                await _model.waitForApiRequestCompleted();
                              }

                              safeSetState(() {});
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                      child: Text(
                        'Distância de ${FFAppState().distanciaLocalizacao.toString()} km',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FutureBuilder<ApiCallResponse>(
                      future: FFAppState()
                          .cacheRestaurantes(
                        requestFn: () => EventosERestaurantesGroup
                            .restaurantesPorDistanciaCall
                            .call(
                          token: currentJwtToken,
                          distanciaMaxima:
                              FFAppState().distanciaLocalizacao * 1000,
                          lat: functions
                              .latitude(FFAppState().perfilUsuario.coordenadas),
                          long: functions.longitude(
                              FFAppState().perfilUsuario.coordenadas),
                        ),
                      )
                          .then((result) {
                        _model.apiRequestCompleted = true;
                        return result;
                      }),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 40.0,
                              height: 40.0,
                              child: SpinKitChasingDots(
                                color: FlutterFlowTheme.of(context).alternate,
                                size: 40.0,
                              ),
                            ),
                          );
                        }
                        final containerRestaurantesPorDistanciaResponse =
                            snapshot.data!;

                        return Container(
                          decoration: BoxDecoration(),
                          child: Builder(
                            builder: (context) {
                              if (((containerRestaurantesPorDistanciaResponse
                                                  .jsonBody
                                                  .toList()
                                                  .map<FuncRestaurantesPorDistanciaStruct?>(
                                                      FuncRestaurantesPorDistanciaStruct
                                                          .maybeFromMap)
                                                  .toList()
                                              as Iterable<
                                                  FuncRestaurantesPorDistanciaStruct?>)
                                          .withoutNulls)
                                      .isNotEmpty) {
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: Builder(
                                    builder: (context) {
                                      final listaRestaurantes =
                                          (containerRestaurantesPorDistanciaResponse
                                                          .jsonBody
                                                          .toList()
                                                          .map<FuncRestaurantesPorDistanciaStruct?>(
                                                              FuncRestaurantesPorDistanciaStruct
                                                                  .maybeFromMap)
                                                          .toList()
                                                      as Iterable<
                                                          FuncRestaurantesPorDistanciaStruct?>)
                                                  .withoutNulls
                                                  .where((e) =>
                                                      e.status == 'Publicado')
                                                  .toList()
                                                  .sortedList(
                                                      keyOf: (e) =>
                                                          e.distMeters,
                                                      desc: false)
                                                  .toList() ??
                                              [];

                                      return RefreshIndicator(
                                        key: Key('RefreshIndicator_rsnkonkx'),
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        onRefresh: () async {
                                          _model.checkConnectionRefresh =
                                              await actions.checkInternet();
                                          if (_model.checkConnectionRefresh ==
                                              true) {
                                            FFAppState()
                                                .clearCacheRestaurantesCache();
                                            FFAppState()
                                                .clearCacheRestaurantesHomeCache();
                                            safeSetState(() {
                                              FFAppState()
                                                  .clearCacheRestaurantesCache();
                                              _model.apiRequestCompleted =
                                                  false;
                                            });
                                            await _model
                                                .waitForApiRequestCompleted(
                                                    maxWait: 3000);
                                          } else {
                                            context.pushNamed(
                                                OfflineWidget.routeName);
                                          }
                                        },
                                        child: ListView.separated(
                                          padding: EdgeInsets.fromLTRB(
                                            0,
                                            8.0,
                                            0,
                                            24.0,
                                          ),
                                          scrollDirection: Axis.vertical,
                                          itemCount: listaRestaurantes.length,
                                          separatorBuilder: (_, __) =>
                                              SizedBox(height: 16.0),
                                          itemBuilder: (context,
                                              listaRestaurantesIndex) {
                                            final listaRestaurantesItem =
                                                listaRestaurantes[
                                                    listaRestaurantesIndex];
                                            return Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      15.0, 0.0, 15.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model.checkConnection =
                                                      await actions
                                                          .checkInternet();
                                                  if (_model.checkConnection ==
                                                      true) {
                                                    context.pushNamed(
                                                      RestaurantesDetalhesWidget
                                                          .routeName,
                                                      queryParameters: {
                                                        'id': serializeParam(
                                                          listaRestaurantesItem
                                                              .id,
                                                          ParamType.int,
                                                        ),
                                                        'nome': serializeParam(
                                                          listaRestaurantesItem
                                                              .nome,
                                                          ParamType.String,
                                                        ),
                                                        'banner':
                                                            serializeParam(
                                                          listaRestaurantesItem
                                                              .imagemBanner,
                                                          ParamType.String,
                                                        ),
                                                        'logomarca':
                                                            serializeParam(
                                                          listaRestaurantesItem
                                                              .logomarca,
                                                          ParamType.String,
                                                        ),
                                                        'endereco':
                                                            serializeParam(
                                                          listaRestaurantesItem
                                                              .endereco,
                                                          ParamType.String,
                                                        ),
                                                        'acessibilidade':
                                                            serializeParam(
                                                          listaRestaurantesItem
                                                              .acessibilidade,
                                                          ParamType.bool,
                                                        ),
                                                        'horaAbertura':
                                                            serializeParam(
                                                          listaRestaurantesItem
                                                              .horarioAbertura,
                                                          ParamType.String,
                                                        ),
                                                        'horaFechamento':
                                                            serializeParam(
                                                          listaRestaurantesItem
                                                              .horarioFechamento,
                                                          ParamType.String,
                                                        ),
                                                        'telefone':
                                                            serializeParam(
                                                          listaRestaurantesItem
                                                              .telefone,
                                                          ParamType.String,
                                                        ),
                                                        'descricao':
                                                            serializeParam(
                                                          listaRestaurantesItem
                                                              .descricao,
                                                          ParamType.String,
                                                        ),
                                                        'facebook':
                                                            serializeParam(
                                                          listaRestaurantesItem
                                                              .facebook,
                                                          ParamType.String,
                                                        ),
                                                        'instagram':
                                                            serializeParam(
                                                          listaRestaurantesItem
                                                              .instagram,
                                                          ParamType.String,
                                                        ),
                                                        'tiktok':
                                                            serializeParam(
                                                          listaRestaurantesItem
                                                              .tiktok,
                                                          ParamType.String,
                                                        ),
                                                        'site': serializeParam(
                                                          listaRestaurantesItem
                                                              .site,
                                                          ParamType.String,
                                                        ),
                                                        'comentarios':
                                                            serializeParam(
                                                          listaRestaurantesItem
                                                              .comentarios,
                                                          ParamType.String,
                                                          isList: true,
                                                        ),
                                                        'mediaAvaliacao':
                                                            serializeParam(
                                                          listaRestaurantesItem
                                                              .mediaAvaliacoes,
                                                          ParamType.double,
                                                        ),
                                                        'coordenadas':
                                                            serializeParam(
                                                          functions.convertOneStringToLatLngList(
                                                              listaRestaurantesItem
                                                                  .coordenadas),
                                                          ParamType.LatLng,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  } else {
                                                    context.pushNamed(
                                                        OfflineWidget
                                                            .routeName);
                                                  }

                                                  safeSetState(() {});
                                                },
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        width: 1.0,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Stack(
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child: Image
                                                                    .network(
                                                                  '${listaRestaurantesItem.imagemBanner}',
                                                                  width: double
                                                                      .infinity,
                                                                  height: 200.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                  errorBuilder: (context,
                                                                          error,
                                                                          stackTrace) =>
                                                                      Image
                                                                          .asset(
                                                                    'assets/images/error_image.png',
                                                                    width: double
                                                                        .infinity,
                                                                    height:
                                                                        200.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            4.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    if (functions.isSavedRestaurantInList(
                                                                        listaRestaurantesItem
                                                                            .id,
                                                                        _model
                                                                            .salvos
                                                                            .toList()))
                                                                      FlutterFlowIconButton(
                                                                        borderColor:
                                                                            Colors.transparent,
                                                                        borderRadius:
                                                                            8.0,
                                                                        buttonSize:
                                                                            40.0,
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).alternate,
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .bookmark_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        onPressed:
                                                                            () async {
                                                                          while (_model.contador <
                                                                              _model.salvos.length) {
                                                                            if (listaRestaurantesItem.id ==
                                                                                _model.salvos.elementAtOrNull(_model.contador)?.idRestaurantes) {
                                                                              _model.removeAtIndexFromSalvos(_model.contador);
                                                                              safeSetState(() {});
                                                                              await FavoritosTable().delete(
                                                                                matchingRows: (rows) => rows
                                                                                    .eqOrNull(
                                                                                      'id_cliente',
                                                                                      currentUserUid,
                                                                                    )
                                                                                    .eqOrNull(
                                                                                      'id_restaurantes',
                                                                                      listaRestaurantesItem.id,
                                                                                    ),
                                                                              );
                                                                              _model.contador = 0;
                                                                              safeSetState(() {});
                                                                              FFAppState().clearCacheFavoritosRestaurantesCache();
                                                                              break;
                                                                            } else {
                                                                              _model.contador = _model.contador + 1;
                                                                              safeSetState(() {});
                                                                            }
                                                                          }
                                                                          await action_blocks
                                                                              .actionLogAtividades(
                                                                            context,
                                                                            atividade:
                                                                                'Restaurante Desfavoritado: ${listaRestaurantesItem.id.toString()}',
                                                                          );
                                                                          await action_blocks
                                                                              .restauranteNaoSalvo(context);
                                                                        },
                                                                      ),
                                                                    if (!functions.isSavedRestaurantInList(
                                                                        listaRestaurantesItem
                                                                            .id,
                                                                        _model
                                                                            .salvos
                                                                            .toList()))
                                                                      FlutterFlowIconButton(
                                                                        borderColor:
                                                                            Colors.transparent,
                                                                        borderRadius:
                                                                            8.0,
                                                                        buttonSize:
                                                                            40.0,
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).alternate,
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .bookmark_border,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        onPressed:
                                                                            () async {
                                                                          _model.addFavorito =
                                                                              await FavoritosTable().insert({
                                                                            'id_cliente':
                                                                                currentUserUid,
                                                                            'id_restaurantes':
                                                                                listaRestaurantesItem.id,
                                                                          });
                                                                          if (_model.addFavorito !=
                                                                              null) {
                                                                            await action_blocks.actionLogAtividades(
                                                                              context,
                                                                              atividade: 'Restaurante Favoritado: ${listaRestaurantesItem.id.toString()}',
                                                                            );
                                                                            _model.addToSalvos(_model.addFavorito!);
                                                                            safeSetState(() {});
                                                                            FFAppState().clearCacheFavoritosRestaurantesCache();
                                                                            await action_blocks.restauranteSalvo(context);
                                                                          } else {
                                                                            await action_blocks.erroAoSalvar(context);
                                                                          }

                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                                      ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        12.0,
                                                                        0.0,
                                                                        4.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            2.0),
                                                                    child: Hero(
                                                                      tag:
                                                                          '${listaRestaurantesItem.logomarca}',
                                                                      transitionOnUserGestures:
                                                                          true,
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.0),
                                                                        child: Image
                                                                            .network(
                                                                          '${listaRestaurantesItem.logomarca}',
                                                                          fit: BoxFit
                                                                              .cover,
                                                                          errorBuilder: (context, error, stackTrace) =>
                                                                              Image.asset(
                                                                            'assets/images/error_image.png',
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Flexible(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Text(
                                                                              listaRestaurantesItem.nome,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    font: GoogleFonts.inter(
                                                                                      fontWeight: FontWeight.w600,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                [
                                                                              Icon(
                                                                                Icons.star_sharp,
                                                                                color: Color(0xFFFFA500),
                                                                                size: 18.0,
                                                                              ),
                                                                              Text(
                                                                                formatNumber(
                                                                                  listaRestaurantesItem.mediaAvaliacoes,
                                                                                  formatType: FormatType.custom,
                                                                                  format: '#.#',
                                                                                  locale: '',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.inter(
                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                      color: Color(0xFFFFA500),
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                              ),
                                                                            ].divide(SizedBox(width: 4.0)),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children:
                                                                            [
                                                                          FaIcon(
                                                                            FontAwesomeIcons.map,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                16.0,
                                                                          ),
                                                                          Flexible(
                                                                            child:
                                                                                Text(
                                                                              functions.extractAddressUntilNeighborhood(listaRestaurantesItem.endereco),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    font: GoogleFonts.inter(
                                                                                      fontWeight: FontWeight.normal,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    fontSize: 12.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.normal,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 8.0)),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        height:
                                                                            4.0)),
                                                                  ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 10.0)),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                );
                              } else {
                                return Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Container(
                                    width: 320.0,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/unboxing_11747863.png',
                                            width: 150.0,
                                            height: 150.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Text(
                                          'Ops! Parece que não encontramos\nrestaurantes na sua região.',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                fontSize: 18.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Atualmente, não há restaurantes disponíveis a uma distância de ${FFAppState().distanciaLocalizacao.toString()} km. Confira novamente mais tarde ou experimente ampliar a sua busca!',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ].divide(SizedBox(height: 16.0)),
                                    ),
                                  ),
                                );
                              }
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
