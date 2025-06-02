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
import 'roles_model.dart';
export 'roles_model.dart';

class RolesWidget extends StatefulWidget {
  const RolesWidget({super.key});

  static String routeName = 'Roles';
  static String routePath = '/roles';

  @override
  State<RolesWidget> createState() => _RolesWidgetState();
}

class _RolesWidgetState extends State<RolesWidget> {
  late RolesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RolesModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.checkConnectionEventos = await actions.checkInternet();
      if (_model.checkConnectionEventos == true) {
        _model.favoriteResult = await FavoritosTable().queryRows(
          queryFn: (q) => q.eqOrNull(
            'id_cliente',
            currentUserUid,
          ),
        );
        _model.favoritos = _model.favoriteResult!.toList().cast<FavoritosRow>();
        safeSetState(() {});
      } else {
        context.pushNamed(OfflineWidget.routeName);
      }
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
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      height: 70.0,
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlutterFlowIconButton(
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
                                'Rolês',
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
                                            .clearCacheEventosPorDistanciaCache();
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
                            borderColor: Colors.transparent,
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
                                          pagina: 'eventos',
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) =>
                                  safeSetState(() => _model.retorno = value));

                              if (_model.retorno!) {
                                safeSetState(() {
                                  FFAppState()
                                      .clearCacheEventosPorDistanciaCache();
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
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 15.0, 0.0),
                          child: Text(
                            FFAppState().ordenarData == 'ASC'
                                ? 'Ordenado por data mais próxima'
                                : 'Ordenado por data mais distante',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
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
                      Align(
                        alignment: AlignmentDirectional(1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 15.0, 0.0),
                          child: Text(
                            'Distância de ${FFAppState().distanciaLocalizacao.toString()} km',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
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
                    ],
                  ),
                  Expanded(
                    child: FutureBuilder<ApiCallResponse>(
                      future: FFAppState()
                          .cacheEventosPorDistancia(
                        requestFn: () => EventosERestaurantesGroup
                            .eventosPorDistanciaCall
                            .call(
                          distancia: FFAppState().distanciaLocalizacao * 1000,
                          lat: functions
                              .latitude(FFAppState().perfilUsuario.coordenadas),
                          long: functions.longitude(
                              FFAppState().perfilUsuario.coordenadas),
                          ordenarPorData: FFAppState().ordenarData,
                          token: currentJwtToken,
                          estilosFiltroList: FFAppState().estilosEscolhidos,
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
                        final containerEventosPorDistanciaResponse =
                            snapshot.data!;

                        return Container(
                          decoration: BoxDecoration(),
                          child: Builder(
                            builder: (context) {
                              if (((containerEventosPorDistanciaResponse
                                                  .jsonBody
                                                  .toList()
                                                  .map<FuncEventosPorDistanciaStruct?>(
                                                      FuncEventosPorDistanciaStruct
                                                          .maybeFromMap)
                                                  .toList()
                                              as Iterable<
                                                  FuncEventosPorDistanciaStruct?>)
                                          .withoutNulls)
                                      .isNotEmpty) {
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: Builder(
                                    builder: (context) {
                                      final listaEventos =
                                          (containerEventosPorDistanciaResponse
                                                          .jsonBody
                                                          .toList()
                                                          .map<FuncEventosPorDistanciaStruct?>(
                                                              FuncEventosPorDistanciaStruct
                                                                  .maybeFromMap)
                                                          .toList()
                                                      as Iterable<
                                                          FuncEventosPorDistanciaStruct?>)
                                                  .withoutNulls
                                                  .where((e) =>
                                                      e.status == 'Publicado')
                                                  .toList()
                                                  .toList() ??
                                              [];

                                      return RefreshIndicator(
                                        key: Key('RefreshIndicator_psctj5ks'),
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        onRefresh: () async {
                                          _model.checkConnectionRefresh =
                                              await actions.checkInternet();
                                          if (_model.checkConnectionRefresh ==
                                              true) {
                                            FFAppState()
                                                .clearCacheEventosPorDistanciaCache();
                                            FFAppState()
                                                .clearCacheEventosHomeCache();
                                            safeSetState(() {
                                              FFAppState()
                                                  .clearCacheEventosPorDistanciaCache();
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
                                          itemCount: listaEventos.length,
                                          separatorBuilder: (_, __) =>
                                              SizedBox(height: 16.0),
                                          itemBuilder:
                                              (context, listaEventosIndex) {
                                            final listaEventosItem =
                                                listaEventos[listaEventosIndex];
                                            return Opacity(
                                              opacity:
                                                  listaEventosItem.status ==
                                                          'Finalizado'
                                                      ? 0.5
                                                      : 1.0,
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 0.0, 15.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    _model.checkConnectionEvento =
                                                        await actions
                                                            .checkInternet();
                                                    if (_model
                                                            .checkConnectionEvento ==
                                                        true) {
                                                      context.pushNamed(
                                                        RolesDetalhesWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'banner':
                                                              serializeParam(
                                                            '${listaEventosItem.imagemBanner}',
                                                            ParamType.String,
                                                          ),
                                                          'nomeEvento':
                                                              serializeParam(
                                                            listaEventosItem
                                                                .nomeEvento,
                                                            ParamType.String,
                                                          ),
                                                          'valor':
                                                              serializeParam(
                                                            listaEventosItem
                                                                .valor,
                                                            ParamType.double,
                                                          ),
                                                          'endereco':
                                                              serializeParam(
                                                            listaEventosItem
                                                                .endereco,
                                                            ParamType.String,
                                                          ),
                                                          'acessibilidade':
                                                              serializeParam(
                                                            listaEventosItem
                                                                .acessiblidade,
                                                            ParamType.bool,
                                                          ),
                                                          'data':
                                                              serializeParam(
                                                            listaEventosItem
                                                                .data,
                                                            ParamType.String,
                                                          ),
                                                          'horarioInicial':
                                                              serializeParam(
                                                            listaEventosItem
                                                                .horarioInicial,
                                                            ParamType.String,
                                                          ),
                                                          'horarioFinal':
                                                              serializeParam(
                                                            listaEventosItem
                                                                .horarioFinal,
                                                            ParamType.String,
                                                          ),
                                                          'descricao':
                                                              serializeParam(
                                                            listaEventosItem
                                                                .descricao,
                                                            ParamType.String,
                                                          ),
                                                          'nomeParceiro':
                                                              serializeParam(
                                                            listaEventosItem
                                                                .nomeParceiro,
                                                            ParamType.String,
                                                          ),
                                                          'facebook':
                                                              serializeParam(
                                                            listaEventosItem
                                                                .facebook,
                                                            ParamType.String,
                                                          ),
                                                          'instagram':
                                                              serializeParam(
                                                            listaEventosItem
                                                                .instagram,
                                                            ParamType.String,
                                                          ),
                                                          'tiktok':
                                                              serializeParam(
                                                            listaEventosItem
                                                                .tiktok,
                                                            ParamType.String,
                                                          ),
                                                          'site':
                                                              serializeParam(
                                                            listaEventosItem
                                                                .site,
                                                            ParamType.String,
                                                          ),
                                                          'id': serializeParam(
                                                            listaEventosItem.id,
                                                            ParamType.int,
                                                          ),
                                                          'estilo':
                                                              serializeParam(
                                                            listaEventosItem
                                                                .estilo,
                                                            ParamType.String,
                                                            isList: true,
                                                          ),
                                                          'status':
                                                              serializeParam(
                                                            listaEventosItem
                                                                .status,
                                                            ParamType.String,
                                                          ),
                                                          'nomeLocal':
                                                              serializeParam(
                                                            listaEventosItem
                                                                .nomeLocal,
                                                            ParamType.String,
                                                          ),
                                                          'coordenadas':
                                                              serializeParam(
                                                            functions.convertOneStringToLatLngList(
                                                                listaEventosItem
                                                                    .coordenadas),
                                                            ParamType.LatLng,
                                                          ),
                                                          'ingresso':
                                                              serializeParam(
                                                            listaEventosItem
                                                                .linkIngresso,
                                                            ParamType.String,
                                                          ),
                                                          'dataFinal':
                                                              serializeParam(
                                                            listaEventosItem
                                                                .dataFinal,
                                                            ParamType.String,
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
                                                  child: Container(
                                                    height: 174.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.0),
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
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Stack(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      1.0,
                                                                      -1.0),
                                                              children: [
                                                                Hero(
                                                                  tag:
                                                                      '${listaEventosItem.imagemBanner}',
                                                                  transitionOnUserGestures:
                                                                      true,
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                    child: Image
                                                                        .network(
                                                                      '${listaEventosItem.imagemBanner}',
                                                                      width:
                                                                          150.0,
                                                                      height: double
                                                                          .infinity,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                      alignment:
                                                                          Alignment(
                                                                              0.0,
                                                                              -1.0),
                                                                      errorBuilder: (context,
                                                                              error,
                                                                              stackTrace) =>
                                                                          Image
                                                                              .asset(
                                                                        'assets/images/error_image.png',
                                                                        width:
                                                                            150.0,
                                                                        height:
                                                                            double.infinity,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                        alignment: Alignment(
                                                                            0.0,
                                                                            -1.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                if (listaEventosItem
                                                                        .status !=
                                                                    'Finalizado')
                                                                  Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            4.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        if (functions.isSavedEventInList(
                                                                            listaEventosItem.id,
                                                                            _model.favoritos.toList()))
                                                                          FlutterFlowIconButton(
                                                                            borderColor:
                                                                                Colors.transparent,
                                                                            borderRadius:
                                                                                8.0,
                                                                            buttonSize:
                                                                                40.0,
                                                                            fillColor:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            icon:
                                                                                Icon(
                                                                              Icons.bookmark_rounded,
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              size: 24.0,
                                                                            ),
                                                                            onPressed:
                                                                                () async {
                                                                              while (_model.contador < _model.favoritos.length) {
                                                                                if (listaEventosItem.id == _model.favoritos.elementAtOrNull(_model.contador)?.idEventos) {
                                                                                  _model.removeAtIndexFromFavoritos(_model.contador);
                                                                                  safeSetState(() {});
                                                                                  await FavoritosTable().delete(
                                                                                    matchingRows: (rows) => rows
                                                                                        .eqOrNull(
                                                                                          'id_cliente',
                                                                                          currentUserUid,
                                                                                        )
                                                                                        .eqOrNull(
                                                                                          'id_eventos',
                                                                                          listaEventosItem.id,
                                                                                        ),
                                                                                  );
                                                                                  _model.contador = 0;
                                                                                  safeSetState(() {});
                                                                                  FFAppState().clearCacheFavoritosEventosCache();
                                                                                  FFAppState().clearCacheEventosPorDistanciaCache();
                                                                                  break;
                                                                                } else {
                                                                                  _model.contador = _model.contador + 1;
                                                                                  safeSetState(() {});
                                                                                }
                                                                              }
                                                                              await action_blocks.actionLogAtividades(
                                                                                context,
                                                                                atividade: 'Evento Desfavoritado: ${listaEventosItem.id.toString()}',
                                                                              );
                                                                              await action_blocks.roleNaoSalvo(context);
                                                                            },
                                                                          ),
                                                                        if (!functions.isSavedEventInList(
                                                                            listaEventosItem.id,
                                                                            _model.favoritos.toList()))
                                                                          FlutterFlowIconButton(
                                                                            borderColor:
                                                                                Colors.transparent,
                                                                            borderRadius:
                                                                                8.0,
                                                                            buttonSize:
                                                                                40.0,
                                                                            fillColor:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            icon:
                                                                                Icon(
                                                                              Icons.bookmark_border,
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              size: 24.0,
                                                                            ),
                                                                            onPressed:
                                                                                () async {
                                                                              _model.addFavorito = await FavoritosTable().insert({
                                                                                'id_cliente': currentUserUid,
                                                                                'id_eventos': listaEventosItem.id,
                                                                              });
                                                                              if (_model.addFavorito != null) {
                                                                                await action_blocks.actionLogAtividades(
                                                                                  context,
                                                                                  atividade: 'Evento Favoritado: ${listaEventosItem.id.toString()}',
                                                                                );
                                                                                _model.addToFavoritos(_model.addFavorito!);
                                                                                safeSetState(() {});
                                                                                FFAppState().clearCacheFavoritosEventosCache();
                                                                                FFAppState().clearCacheEventosPorDistanciaCache();
                                                                                await action_blocks.roleSalvo(context);
                                                                              } else {
                                                                                await action_blocks.erroAoSalvar(context);
                                                                              }

                                                                              safeSetState(() {});
                                                                            },
                                                                          ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Column(
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
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    if (listaEventosItem
                                                                        .estilo
                                                                        .isNotEmpty)
                                                                      Builder(
                                                                        builder:
                                                                            (context) {
                                                                          if (listaEventosItem.status !=
                                                                              'Finalizado') {
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
                                                                                  listaEventosItem.status,
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
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children:
                                                                          [
                                                                        Text(
                                                                          listaEventosItem
                                                                              .nomeEvento,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
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
                                                                        RichText(
                                                                          textScaler:
                                                                              MediaQuery.of(context).textScaler,
                                                                          text:
                                                                              TextSpan(
                                                                            children: [
                                                                              TextSpan(
                                                                                text: listaEventosItem.dataFinal != ''
                                                                                    ? 'De ${dateTimeFormat(
                                                                                        "dd/MM",
                                                                                        functions.stringToDateTime(listaEventosItem.data),
                                                                                        locale: FFLocalizations.of(context).languageCode,
                                                                                      )} até ${dateTimeFormat(
                                                                                        "dd/MM",
                                                                                        functions.stringToDateTime(listaEventosItem.dataFinal),
                                                                                        locale: FFLocalizations.of(context).languageCode,
                                                                                      )}'
                                                                                    : functions.capitalizeWeekday(listaEventosItem.data),
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
                                                                              TextSpan(
                                                                                text: ' - às ',
                                                                                style: TextStyle(
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                              ),
                                                                              TextSpan(
                                                                                text: dateTimeFormat(
                                                                                  "Hm",
                                                                                  functions.stringToTime(listaEventosItem.horarioInicial),
                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                ),
                                                                                style: TextStyle(
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                ),
                                                                              ),
                                                                              TextSpan(
                                                                                text: 'h',
                                                                                style: TextStyle(
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                ),
                                                                              )
                                                                            ],
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
                                                                          ),
                                                                        ),
                                                                        if (listaEventosItem.nomeLocal !=
                                                                                '')
                                                                          Text(
                                                                            listaEventosItem.nomeLocal,
                                                                            maxLines:
                                                                                2,
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
                                                                      ].divide(SizedBox(
                                                                              height: 8.0)),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      height:
                                                                          12.0)),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          1.0,
                                                                          0.0),
                                                                  child:
                                                                      Builder(
                                                                    builder:
                                                                        (context) {
                                                                      if (listaEventosItem
                                                                              .valor !=
                                                                          0.0) {
                                                                        return Text(
                                                                          formatNumber(
                                                                            listaEventosItem.valor,
                                                                            formatType:
                                                                                FormatType.custom,
                                                                            currency:
                                                                                'R\$ ',
                                                                            format:
                                                                                '#,##0.00',
                                                                            locale:
                                                                                'pt_BR',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
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
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
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
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 14.0)),
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
                                return Container(
                                  width: 320.0,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                        'Ops! Não encontramos\nrolês na sua região.',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
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
                                            'Atualmente, não há rolês disponíveis a uma distância de ${FFAppState().distanciaLocalizacao.toString()} km. Confira novamente mais tarde ou experimente ampliar a sua busca!',
                                            style: FlutterFlowTheme.of(context)
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
                                                  fontWeight: FontWeight.normal,
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
