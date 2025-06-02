import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'comp_card_evento_model.dart';
export 'comp_card_evento_model.dart';

class CompCardEventoWidget extends StatefulWidget {
  const CompCardEventoWidget({
    super.key,
    this.eventoSelecionado,
    this.restauranteSelecionado,
  });

  final FuncEventosPorDistanciaStruct? eventoSelecionado;
  final FuncRestaurantesPorDistanciaStruct? restauranteSelecionado;

  @override
  State<CompCardEventoWidget> createState() => _CompCardEventoWidgetState();
}

class _CompCardEventoWidgetState extends State<CompCardEventoWidget> {
  late CompCardEventoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompCardEventoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Stack(
        alignment: AlignmentDirectional(0.0, -0.85),
        children: [
          Transform.rotate(
            angle: 45.0 * (math.pi / 180),
            child: Container(
              width: 30.0,
              height: 30.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).alternate,
              ),
            ),
          ),
          Builder(
            builder: (context) {
              if (widget.eventoSelecionado != null) {
                return Padding(
                  padding: EdgeInsets.all(16.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.checkConnectionEvento =
                          await actions.checkInternet();
                      if (_model.checkConnectionEvento == true) {
                        context.pushNamed(
                          RolesDetalhesWidget.routeName,
                          queryParameters: {
                            'banner': serializeParam(
                              '${widget.eventoSelecionado?.imagemBanner}',
                              ParamType.String,
                            ),
                            'nomeEvento': serializeParam(
                              widget.eventoSelecionado?.nomeEvento,
                              ParamType.String,
                            ),
                            'valor': serializeParam(
                              widget.eventoSelecionado?.valor,
                              ParamType.double,
                            ),
                            'endereco': serializeParam(
                              widget.eventoSelecionado?.endereco,
                              ParamType.String,
                            ),
                            'acessibilidade': serializeParam(
                              widget.eventoSelecionado?.acessiblidade,
                              ParamType.bool,
                            ),
                            'data': serializeParam(
                              widget.eventoSelecionado?.data,
                              ParamType.String,
                            ),
                            'horarioInicial': serializeParam(
                              widget.eventoSelecionado?.horarioInicial,
                              ParamType.String,
                            ),
                            'horarioFinal': serializeParam(
                              widget.eventoSelecionado?.horarioFinal,
                              ParamType.String,
                            ),
                            'descricao': serializeParam(
                              widget.eventoSelecionado?.descricao,
                              ParamType.String,
                            ),
                            'nomeParceiro': serializeParam(
                              widget.eventoSelecionado?.nomeParceiro,
                              ParamType.String,
                            ),
                            'facebook': serializeParam(
                              widget.eventoSelecionado?.facebook,
                              ParamType.String,
                            ),
                            'instagram': serializeParam(
                              widget.eventoSelecionado?.instagram,
                              ParamType.String,
                            ),
                            'tiktok': serializeParam(
                              widget.eventoSelecionado?.tiktok,
                              ParamType.String,
                            ),
                            'site': serializeParam(
                              widget.eventoSelecionado?.site,
                              ParamType.String,
                            ),
                            'id': serializeParam(
                              widget.eventoSelecionado?.id,
                              ParamType.int,
                            ),
                            'estilo': serializeParam(
                              widget.eventoSelecionado?.estilo,
                              ParamType.String,
                              isList: true,
                            ),
                            'status': serializeParam(
                              widget.eventoSelecionado?.status,
                              ParamType.String,
                            ),
                            'nomeLocal': serializeParam(
                              widget.eventoSelecionado?.nomeLocal,
                              ParamType.String,
                            ),
                            'coordenadas': serializeParam(
                              functions.convertOneStringToLatLngList(
                                  widget.eventoSelecionado!.coordenadas),
                              ParamType.LatLng,
                            ),
                            'ingresso': serializeParam(
                              widget.eventoSelecionado?.linkIngresso,
                              ParamType.String,
                            ),
                            'dataFinal': serializeParam(
                              widget.eventoSelecionado?.dataFinal,
                              ParamType.String,
                            ),
                          }.withoutNulls,
                        );
                      } else {
                        context.pushNamed(OfflineWidget.routeName);
                      }

                      safeSetState(() {});
                    },
                    child: Container(
                      width: 310.0,
                      height: 140.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).alternate,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                '${widget.eventoSelecionado?.imagemBanner}',
                                width: 110.0,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Flexible(
                              child: Container(
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              valueOrDefault<String>(
                                                widget.eventoSelecionado
                                                    ?.nomeEvento,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                            ),
                                          ),
                                          if (widget.eventoSelecionado
                                                      ?.nomeEvento !=
                                                  null &&
                                              widget.eventoSelecionado
                                                      ?.nomeEvento !=
                                                  '')
                                            Text(
                                              valueOrDefault<String>(
                                                widget.eventoSelecionado
                                                    ?.nomeLocal,
                                                '-',
                                              ),
                                              maxLines: 2,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.inter(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          Text(
                                            valueOrDefault<String>(
                                              functions
                                                  .extractAddressUntilNeighborhood(
                                                      valueOrDefault<String>(
                                                widget.eventoSelecionado
                                                    ?.endereco,
                                                '-',
                                              )),
                                              '-',
                                            ),
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: Container(
                                        width: 88.0,
                                        height: 28.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          borderRadius:
                                              BorderRadius.circular(6.0),
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          'Detalhes',
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ].divide(SizedBox(width: 8.0)),
                        ),
                      ),
                    ),
                  ),
                );
              } else {
                return Padding(
                  padding: EdgeInsets.all(16.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.checkConnectionRestaurate =
                          await actions.checkInternet();
                      if (_model.checkConnectionRestaurate == true) {
                        context.pushNamed(
                          RestaurantesDetalhesWidget.routeName,
                          queryParameters: {
                            'id': serializeParam(
                              widget.restauranteSelecionado?.id,
                              ParamType.int,
                            ),
                            'nome': serializeParam(
                              widget.restauranteSelecionado?.nome,
                              ParamType.String,
                            ),
                            'banner': serializeParam(
                              '${widget.restauranteSelecionado?.imagemBanner}',
                              ParamType.String,
                            ),
                            'logomarca': serializeParam(
                              widget.restauranteSelecionado?.logomarca,
                              ParamType.String,
                            ),
                            'endereco': serializeParam(
                              widget.restauranteSelecionado?.endereco,
                              ParamType.String,
                            ),
                            'acessibilidade': serializeParam(
                              widget.restauranteSelecionado?.acessibilidade,
                              ParamType.bool,
                            ),
                            'horaAbertura': serializeParam(
                              widget.restauranteSelecionado?.horarioAbertura,
                              ParamType.String,
                            ),
                            'horaFechamento': serializeParam(
                              widget.restauranteSelecionado?.horarioFechamento,
                              ParamType.String,
                            ),
                            'telefone': serializeParam(
                              widget.restauranteSelecionado?.telefone,
                              ParamType.String,
                            ),
                            'descricao': serializeParam(
                              widget.restauranteSelecionado?.descricao,
                              ParamType.String,
                            ),
                            'facebook': serializeParam(
                              widget.restauranteSelecionado?.facebook,
                              ParamType.String,
                            ),
                            'instagram': serializeParam(
                              widget.restauranteSelecionado?.instagram,
                              ParamType.String,
                            ),
                            'tiktok': serializeParam(
                              widget.restauranteSelecionado?.tiktok,
                              ParamType.String,
                            ),
                            'site': serializeParam(
                              widget.restauranteSelecionado?.tiktok,
                              ParamType.String,
                            ),
                            'comentarios': serializeParam(
                              widget.restauranteSelecionado?.comentarios,
                              ParamType.String,
                              isList: true,
                            ),
                            'mediaAvaliacao': serializeParam(
                              widget.restauranteSelecionado?.mediaAvaliacoes,
                              ParamType.double,
                            ),
                            'coordenadas': serializeParam(
                              functions.convertOneStringToLatLngList(
                                  widget.restauranteSelecionado!.coordenadas),
                              ParamType.LatLng,
                            ),
                          }.withoutNulls,
                        );
                      } else {
                        context.pushNamed(OfflineWidget.routeName);
                      }

                      safeSetState(() {});
                    },
                    child: Container(
                      width: 300.0,
                      height: 130.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).alternate,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                '${widget.restauranteSelecionado?.logomarca}',
                                width: 110.0,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Flexible(
                              child: Container(
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              valueOrDefault<String>(
                                                widget.restauranteSelecionado
                                                    ?.nome,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                            ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              functions
                                                  .extractAddressUntilNeighborhood(
                                                      valueOrDefault<String>(
                                                widget.restauranteSelecionado
                                                    ?.endereco,
                                                '-',
                                              )),
                                              '-',
                                            ),
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: Container(
                                        width: 88.0,
                                        height: 28.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          borderRadius:
                                              BorderRadius.circular(6.0),
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          'Detalhes',
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ].divide(SizedBox(width: 8.0)),
                        ),
                      ),
                    ),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
