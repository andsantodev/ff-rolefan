import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/componentes/comp_remover_favorito/comp_remover_favorito_widget.dart';
import '/componentes/floating_bottom_navigation/floating_bottom_navigation_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'salvos_model.dart';
export 'salvos_model.dart';

class SalvosWidget extends StatefulWidget {
  const SalvosWidget({super.key});

  static String routeName = 'Salvos';
  static String routePath = '/salvos';

  @override
  State<SalvosWidget> createState() => _SalvosWidgetState();
}

class _SalvosWidgetState extends State<SalvosWidget>
    with TickerProviderStateMixin {
  late SalvosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SalvosModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.favoriteResult = await FavoritosTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'id_cliente',
          currentUserUid,
        ),
      );
      _model.favoritos = _model.favoriteResult!.toList().cast<FavoritosRow>();
      safeSetState(() {});
    });

    _model.inputPesquisarTextController ??= TextEditingController();
    _model.inputPesquisarFocusNode ??= FocusNode();

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
              child: Stack(
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
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
                                fillColor:
                                    FlutterFlowTheme.of(context).alternate,
                                icon: Icon(
                                  Icons.arrow_back_ios_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
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
                              Text(
                                'Salvos',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.0,
                                ),
                              ),
                              Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller:
                                          _model.inputPesquisarTextController,
                                      focusNode: _model.inputPesquisarFocusNode,
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        alignLabelWithHint: false,
                                        hintText: 'Pesquisar',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: Color(0x9957636C),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16.0, 16.0, 16.0, 16.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                      validator: _model
                                          .inputPesquisarTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 8.0,
                                  borderWidth: 1.0,
                                  buttonSize: 46.0,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  icon: Icon(
                                    Icons.filter_list,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                              ].divide(SizedBox(width: 12.0)),
                            ),
                          ),
                        Flexible(
                          child: Container(
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
                                      [() async {}, () async {}][i]();
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: TabBarView(
                                    controller: _model.tabBarController,
                                    children: [
                                      KeepAliveWidgetWrapper(
                                        builder: (context) =>
                                            FutureBuilder<ApiCallResponse>(
                                          future: FFAppState()
                                              .cacheFavoritosEventos(
                                            requestFn: () =>
                                                EventosERestaurantesGroup
                                                    .viewAppFavoritosEventosCall
                                                    .call(
                                              token: currentJwtToken,
                                              order: 'data_favorito.asc',
                                            ),
                                          )
                                              .then((result) {
                                            _model.apiRequestCompleted2 = true;
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
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    size: 40.0,
                                                  ),
                                                ),
                                              );
                                            }
                                            final containerViewAppFavoritosEventosResponse =
                                                snapshot.data!;

                                            return Container(
                                              decoration: BoxDecoration(),
                                              child: Builder(
                                                builder: (context) {
                                                  if (((containerViewAppFavoritosEventosResponse
                                                                      .jsonBody
                                                                      .toList()
                                                                      .map<ViewAppFavoritosEventosStruct?>(
                                                                          ViewAppFavoritosEventosStruct
                                                                              .maybeFromMap)
                                                                      .toList()
                                                                  as Iterable<
                                                                      ViewAppFavoritosEventosStruct?>)
                                                              .withoutNulls)
                                                          .isNotEmpty) {
                                                    return Builder(
                                                      builder: (context) {
                                                        final listaEventosFavoritos = (containerViewAppFavoritosEventosResponse
                                                                        .jsonBody
                                                                        .toList()
                                                                        .map<ViewAppFavoritosEventosStruct?>(ViewAppFavoritosEventosStruct
                                                                            .maybeFromMap)
                                                                        .toList()
                                                                    as Iterable<
                                                                        ViewAppFavoritosEventosStruct?>)
                                                                .withoutNulls
                                                                .toList() ??
                                                            [];

                                                        return RefreshIndicator(
                                                          key: Key(
                                                              'RefreshIndicator_8ty5a6ku'),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                          onRefresh: () async {
                                                            safeSetState(() {
                                                              FFAppState()
                                                                  .clearCacheFavoritosEventosCache();
                                                              _model.apiRequestCompleted2 =
                                                                  false;
                                                            });
                                                            await _model
                                                                .waitForApiRequestCompleted2();
                                                          },
                                                          child: ListView
                                                              .separated(
                                                            padding: EdgeInsets
                                                                .fromLTRB(
                                                              0,
                                                              8.0,
                                                              0,
                                                              80.0,
                                                            ),
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                listaEventosFavoritos
                                                                    .length,
                                                            separatorBuilder: (_,
                                                                    __) =>
                                                                SizedBox(
                                                                    height:
                                                                        16.0),
                                                            itemBuilder: (context,
                                                                listaEventosFavoritosIndex) {
                                                              final listaEventosFavoritosItem =
                                                                  listaEventosFavoritos[
                                                                      listaEventosFavoritosIndex];
                                                              return Opacity(
                                                                opacity: listaEventosFavoritosItem
                                                                            .status ==
                                                                        'Finalizado'
                                                                    ? 0.6
                                                                    : 1.0,
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    _model.checkConnectionEvento =
                                                                        await actions
                                                                            .checkInternet();
                                                                    if (_model
                                                                            .checkConnectionEvento ==
                                                                        true) {
                                                                      context
                                                                          .pushNamed(
                                                                        RolesDetalhesWidget
                                                                            .routeName,
                                                                        queryParameters:
                                                                            {
                                                                          'banner':
                                                                              serializeParam(
                                                                            getJsonField(
                                                                              listaEventosFavoritosItem.toMap(),
                                                                              r'''$.banner_evento''',
                                                                            ).toString(),
                                                                            ParamType.String,
                                                                          ),
                                                                          'nomeEvento':
                                                                              serializeParam(
                                                                            listaEventosFavoritosItem.nomeEvento,
                                                                            ParamType.String,
                                                                          ),
                                                                          'valor':
                                                                              serializeParam(
                                                                            listaEventosFavoritosItem.valor,
                                                                            ParamType.double,
                                                                          ),
                                                                          'endereco':
                                                                              serializeParam(
                                                                            listaEventosFavoritosItem.enderecoEvento,
                                                                            ParamType.String,
                                                                          ),
                                                                          'acessibilidade':
                                                                              serializeParam(
                                                                            listaEventosFavoritosItem.acessiblidade,
                                                                            ParamType.bool,
                                                                          ),
                                                                          'data':
                                                                              serializeParam(
                                                                            listaEventosFavoritosItem.data,
                                                                            ParamType.String,
                                                                          ),
                                                                          'horarioInicial':
                                                                              serializeParam(
                                                                            listaEventosFavoritosItem.horarioInicial,
                                                                            ParamType.String,
                                                                          ),
                                                                          'horarioFinal':
                                                                              serializeParam(
                                                                            listaEventosFavoritosItem.horarioFinal,
                                                                            ParamType.String,
                                                                          ),
                                                                          'descricao':
                                                                              serializeParam(
                                                                            listaEventosFavoritosItem.descricao,
                                                                            ParamType.String,
                                                                          ),
                                                                          'nomeParceiro':
                                                                              serializeParam(
                                                                            listaEventosFavoritosItem.nomeParceiro,
                                                                            ParamType.String,
                                                                          ),
                                                                          'facebook':
                                                                              serializeParam(
                                                                            listaEventosFavoritosItem.facebook,
                                                                            ParamType.String,
                                                                          ),
                                                                          'instagram':
                                                                              serializeParam(
                                                                            listaEventosFavoritosItem.instagram,
                                                                            ParamType.String,
                                                                          ),
                                                                          'tiktok':
                                                                              serializeParam(
                                                                            listaEventosFavoritosItem.tiktok,
                                                                            ParamType.String,
                                                                          ),
                                                                          'site':
                                                                              serializeParam(
                                                                            listaEventosFavoritosItem.site,
                                                                            ParamType.String,
                                                                          ),
                                                                          'id':
                                                                              serializeParam(
                                                                            listaEventosFavoritosItem.idEvento,
                                                                            ParamType.int,
                                                                          ),
                                                                          'estilo':
                                                                              serializeParam(
                                                                            listaEventosFavoritosItem.estilo,
                                                                            ParamType.String,
                                                                            isList:
                                                                                true,
                                                                          ),
                                                                          'status':
                                                                              serializeParam(
                                                                            listaEventosFavoritosItem.status,
                                                                            ParamType.String,
                                                                          ),
                                                                          'nomeLocal':
                                                                              serializeParam(
                                                                            listaEventosFavoritosItem.nomeLocal,
                                                                            ParamType.String,
                                                                          ),
                                                                          'coordenadas':
                                                                              serializeParam(
                                                                            functions.convertOneStringToLatLngList(listaEventosFavoritosItem.coordenadas),
                                                                            ParamType.LatLng,
                                                                          ),
                                                                          'ingresso':
                                                                              serializeParam(
                                                                            '',
                                                                            ParamType.String,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    } else {
                                                                      context.pushNamed(
                                                                          OfflineWidget
                                                                              .routeName);
                                                                    }

                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    height:
                                                                        170.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              16.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          8.0,
                                                                          8.0,
                                                                          12.0,
                                                                          8.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children:
                                                                            [
                                                                          Container(
                                                                            decoration:
                                                                                BoxDecoration(),
                                                                            child:
                                                                                Stack(
                                                                              alignment: AlignmentDirectional(1.0, -1.0),
                                                                              children: [
                                                                                Hero(
                                                                                  tag: '${listaEventosFavoritosItem.bannerEvento}',
                                                                                  transitionOnUserGestures: true,
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(12.0),
                                                                                    child: Image.network(
                                                                                      '${listaEventosFavoritosItem.bannerEvento}',
                                                                                      width: 150.0,
                                                                                      height: double.infinity,
                                                                                      fit: BoxFit.cover,
                                                                                      alignment: Alignment(0.0, -1.0),
                                                                                      errorBuilder: (context, error, stackTrace) => Image.asset(
                                                                                        'assets/images/error_image.png',
                                                                                        width: 150.0,
                                                                                        height: double.infinity,
                                                                                        fit: BoxFit.cover,
                                                                                        alignment: Alignment(0.0, -1.0),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsets.all(8.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      FlutterFlowIconButton(
                                                                                        borderColor: Colors.transparent,
                                                                                        borderRadius: 8.0,
                                                                                        buttonSize: 40.0,
                                                                                        fillColor: FlutterFlowTheme.of(context).alternate,
                                                                                        icon: Icon(
                                                                                          Icons.bookmark_rounded,
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          size: 24.0,
                                                                                        ),
                                                                                        onPressed: () async {
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
                                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                                  },
                                                                                                  child: Padding(
                                                                                                    padding: MediaQuery.viewInsetsOf(context),
                                                                                                    child: CompRemoverFavoritoWidget(
                                                                                                      tipo: 'evento',
                                                                                                      banner: getJsonField(
                                                                                                        listaEventosFavoritosItem.toMap(),
                                                                                                        r'''$.banner_evento''',
                                                                                                      ).toString(),
                                                                                                      nomeEvento: listaEventosFavoritosItem.nomeEvento,
                                                                                                      localEvento: listaEventosFavoritosItem.nomeLocal,
                                                                                                      dataEvento: listaEventosFavoritosItem.data,
                                                                                                      horarioEvento: listaEventosFavoritosItem.horarioInicial,
                                                                                                      valorEvento: listaEventosFavoritosItem.valor,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                            },
                                                                                          ).then((value) => safeSetState(() => _model.removerEvento = value));

                                                                                          if (_model.removerEvento == true) {
                                                                                            while (_model.contador < _model.favoritos.length) {
                                                                                              if (listaEventosFavoritosItem.idEvento == _model.favoritos.elementAtOrNull(_model.contador)?.idEventos) {
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
                                                                                                        listaEventosFavoritosItem.idEvento,
                                                                                                      ),
                                                                                                );
                                                                                                _model.contador = 0;
                                                                                                safeSetState(() {});
                                                                                                safeSetState(() {
                                                                                                  FFAppState().clearCacheFavoritosEventosCache();
                                                                                                  _model.apiRequestCompleted2 = false;
                                                                                                });
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
                                                                                              atividade: 'Evento Desfavoritado: ${listaEventosFavoritosItem.idEvento.toString()}',
                                                                                            );
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
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Expanded(
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      if (listaEventosFavoritosItem.estilo.isNotEmpty)
                                                                                        Builder(
                                                                                          builder: (context) {
                                                                                            if (listaEventosFavoritosItem.status != 'Finalizado') {
                                                                                              return Container(
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                  borderRadius: BorderRadius.circular(25.0),
                                                                                                ),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 4.0),
                                                                                                  child: Text(
                                                                                                    valueOrDefault<String>(
                                                                                                      listaEventosFavoritosItem.estilo.firstOrNull,
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
                                                                                                      listaEventosFavoritosItem.status,
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
                                                                                      Flexible(
                                                                                        child: Text(
                                                                                          valueOrDefault<String>(
                                                                                            listaEventosFavoritosItem.nomeEvento,
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
                                                                                      ),
                                                                                      if (listaEventosFavoritosItem.nomeLocal != '')
                                                                                        Text(
                                                                                          valueOrDefault<String>(
                                                                                            listaEventosFavoritosItem.nomeLocal,
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
                                                                                      if (responsiveVisibility(
                                                                                        context: context,
                                                                                        phone: false,
                                                                                        tablet: false,
                                                                                        tabletLandscape: false,
                                                                                        desktop: false,
                                                                                      ))
                                                                                        Flexible(
                                                                                          child: Text(
                                                                                            functions.maxLimitCharacters(
                                                                                                valueOrDefault<String>(
                                                                                                  listaEventosFavoritosItem.enderecoEvento,
                                                                                                  '-',
                                                                                                ),
                                                                                                58),
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
                                                                                      RichText(
                                                                                        textScaler: MediaQuery.of(context).textScaler,
                                                                                        text: TextSpan(
                                                                                          children: [
                                                                                            TextSpan(
                                                                                              text: listaEventosFavoritosItem.dataFinal != ''
                                                                                                  ? 'De ${dateTimeFormat(
                                                                                                      "dd/MM",
                                                                                                      functions.stringToDateTime(listaEventosFavoritosItem.data),
                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                    )} até ${dateTimeFormat(
                                                                                                      "dd/MM",
                                                                                                      functions.stringToDateTime(listaEventosFavoritosItem.dataFinal),
                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                    )}'
                                                                                                  : functions.capitalizeWeekday(listaEventosFavoritosItem.data),
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
                                                                                            TextSpan(
                                                                                              text: ' - às ',
                                                                                              style: TextStyle(
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                fontSize: 12.0,
                                                                                              ),
                                                                                            ),
                                                                                            TextSpan(
                                                                                              text: dateTimeFormat(
                                                                                                "Hm",
                                                                                                functions.stringToTime(listaEventosFavoritosItem.horarioInicial),
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
                                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                ),
                                                                                                fontSize: 12.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ].divide(SizedBox(height: 8.0)),
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(1.0, 0.0),
                                                                                  child: Builder(
                                                                                    builder: (context) {
                                                                                      if (listaEventosFavoritosItem.valor != 0.0) {
                                                                                        return Text(
                                                                                          formatNumber(
                                                                                            listaEventosFavoritosItem.valor,
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
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 16.0)),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  } else {
                                                    return Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.asset(
                                                            'assets/images/unboxing_11747863.png',
                                                            width: 200.0,
                                                            height: 200.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Text(
                                                            'Sem Rolês Salvos',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ),
                                                        Text(
                                                          'Parece que você ainda não salvou nenhum rolê. Explore e adicione seus eventos favoritos!',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 15.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        FFButtonWidget(
                                                          onPressed: () async {
                                                            context.pushNamed(
                                                                RolesWidget
                                                                    .routeName);
                                                          },
                                                          text:
                                                              'Descobrir Novos Rolês',
                                                          options:
                                                              FFButtonOptions(
                                                            height: 40.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontStyle,
                                                                    ),
                                                            elevation: 0.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          height: 16.0)),
                                                    );
                                                  }
                                                },
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                      KeepAliveWidgetWrapper(
                                        builder: (context) =>
                                            FutureBuilder<ApiCallResponse>(
                                          future: FFAppState()
                                              .cacheFavoritosRestaurantes(
                                            requestFn: () =>
                                                EventosERestaurantesGroup
                                                    .viewAppFavoritosRestaurantesCall
                                                    .call(
                                              token: currentJwtToken,
                                              order: 'data_favorito.asc',
                                            ),
                                          )
                                              .then((result) {
                                            _model.apiRequestCompleted1 = true;
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
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    size: 40.0,
                                                  ),
                                                ),
                                              );
                                            }
                                            final containerViewAppFavoritosRestaurantesResponse =
                                                snapshot.data!;

                                            return Container(
                                              decoration: BoxDecoration(),
                                              child: Builder(
                                                builder: (context) {
                                                  if (((containerViewAppFavoritosRestaurantesResponse
                                                                      .jsonBody
                                                                      .toList()
                                                                      .map<ViewAppFavoritosRestaurantesStruct?>(
                                                                          ViewAppFavoritosRestaurantesStruct
                                                                              .maybeFromMap)
                                                                      .toList()
                                                                  as Iterable<
                                                                      ViewAppFavoritosRestaurantesStruct?>)
                                                              .withoutNulls)
                                                          .isNotEmpty) {
                                                    return Builder(
                                                      builder: (context) {
                                                        final listaFavoritosRestaurantes = (containerViewAppFavoritosRestaurantesResponse
                                                                        .jsonBody
                                                                        .toList()
                                                                        .map<ViewAppFavoritosRestaurantesStruct?>(ViewAppFavoritosRestaurantesStruct
                                                                            .maybeFromMap)
                                                                        .toList()
                                                                    as Iterable<
                                                                        ViewAppFavoritosRestaurantesStruct?>)
                                                                .withoutNulls
                                                                .toList() ??
                                                            [];

                                                        return RefreshIndicator(
                                                          key: Key(
                                                              'RefreshIndicator_1jkfdfzu'),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                          onRefresh: () async {
                                                            safeSetState(() {
                                                              FFAppState()
                                                                  .clearCacheFavoritosRestaurantesCache();
                                                              _model.apiRequestCompleted1 =
                                                                  false;
                                                            });
                                                            await _model
                                                                .waitForApiRequestCompleted1();
                                                          },
                                                          child: ListView
                                                              .separated(
                                                            padding: EdgeInsets
                                                                .fromLTRB(
                                                              0,
                                                              8.0,
                                                              0,
                                                              80.0,
                                                            ),
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                listaFavoritosRestaurantes
                                                                    .length,
                                                            separatorBuilder: (_,
                                                                    __) =>
                                                                SizedBox(
                                                                    height:
                                                                        16.0),
                                                            itemBuilder: (context,
                                                                listaFavoritosRestaurantesIndex) {
                                                              final listaFavoritosRestaurantesItem =
                                                                  listaFavoritosRestaurantes[
                                                                      listaFavoritosRestaurantesIndex];
                                                              return InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  _model.checkConnectionRestaurante =
                                                                      await actions
                                                                          .checkInternet();
                                                                  if (_model
                                                                          .checkConnectionRestaurante ==
                                                                      true) {
                                                                    context
                                                                        .pushNamed(
                                                                      RestaurantesDetalhesWidget
                                                                          .routeName,
                                                                      queryParameters:
                                                                          {
                                                                        'id':
                                                                            serializeParam(
                                                                          listaFavoritosRestaurantesItem
                                                                              .id,
                                                                          ParamType
                                                                              .int,
                                                                        ),
                                                                        'nome':
                                                                            serializeParam(
                                                                          listaFavoritosRestaurantesItem
                                                                              .nome,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'banner':
                                                                            serializeParam(
                                                                          listaFavoritosRestaurantesItem
                                                                              .imagemBanner,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'logomarca':
                                                                            serializeParam(
                                                                          listaFavoritosRestaurantesItem
                                                                              .logomarca,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'endereco':
                                                                            serializeParam(
                                                                          listaFavoritosRestaurantesItem
                                                                              .endereco,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'acessibilidade':
                                                                            serializeParam(
                                                                          listaFavoritosRestaurantesItem
                                                                              .acessibilidade,
                                                                          ParamType
                                                                              .bool,
                                                                        ),
                                                                        'horaAbertura':
                                                                            serializeParam(
                                                                          listaFavoritosRestaurantesItem
                                                                              .horarioAbertura,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'horaFechamento':
                                                                            serializeParam(
                                                                          listaFavoritosRestaurantesItem
                                                                              .horarioFechamento,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'telefone':
                                                                            serializeParam(
                                                                          listaFavoritosRestaurantesItem
                                                                              .telefone,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'descricao':
                                                                            serializeParam(
                                                                          listaFavoritosRestaurantesItem
                                                                              .descricao,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'facebook':
                                                                            serializeParam(
                                                                          listaFavoritosRestaurantesItem
                                                                              .facebook,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'instagram':
                                                                            serializeParam(
                                                                          listaFavoritosRestaurantesItem
                                                                              .instagram,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'tiktok':
                                                                            serializeParam(
                                                                          listaFavoritosRestaurantesItem
                                                                              .tiktok,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'site':
                                                                            serializeParam(
                                                                          listaFavoritosRestaurantesItem
                                                                              .site,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'comentarios':
                                                                            serializeParam(
                                                                          listaFavoritosRestaurantesItem
                                                                              .comentarios,
                                                                          ParamType
                                                                              .String,
                                                                          isList:
                                                                              true,
                                                                        ),
                                                                        'mediaAvaliacao':
                                                                            serializeParam(
                                                                          listaFavoritosRestaurantesItem
                                                                              .mediaAvaliacoes,
                                                                          ParamType
                                                                              .double,
                                                                        ),
                                                                        'coordenadas':
                                                                            serializeParam(
                                                                          functions
                                                                              .convertOneStringToLatLngList(listaFavoritosRestaurantesItem.coordenadas),
                                                                          ParamType
                                                                              .LatLng,
                                                                        ),
                                                                      }.withoutNulls,
                                                                    );
                                                                  } else {
                                                                    context.pushNamed(
                                                                        OfflineWidget
                                                                            .routeName);
                                                                  }

                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
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
                                                                        color: FlutterFlowTheme.of(context)
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
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Stack(
                                                                            children: [
                                                                              ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                child: Image.network(
                                                                                  '${listaFavoritosRestaurantesItem.imagemBanner}',
                                                                                  width: double.infinity,
                                                                                  height: 200.0,
                                                                                  fit: BoxFit.cover,
                                                                                  errorBuilder: (context, error, stackTrace) => Image.asset(
                                                                                    'assets/images/error_image.png',
                                                                                    width: double.infinity,
                                                                                    height: 200.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsets.all(8.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                                                  children: [
                                                                                    FlutterFlowIconButton(
                                                                                      borderColor: Colors.transparent,
                                                                                      borderRadius: 8.0,
                                                                                      buttonSize: 40.0,
                                                                                      fillColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                      icon: Icon(
                                                                                        Icons.bookmark_rounded,
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        size: 24.0,
                                                                                      ),
                                                                                      onPressed: () async {
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
                                                                                                  FocusManager.instance.primaryFocus?.unfocus();
                                                                                                },
                                                                                                child: Padding(
                                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                                  child: CompRemoverFavoritoWidget(
                                                                                                    tipo: 'restaurante',
                                                                                                    banner: getJsonField(
                                                                                                      listaFavoritosRestaurantesItem.toMap(),
                                                                                                      r'''$.logomarca''',
                                                                                                    ).toString(),
                                                                                                    nomeRestaurante: listaFavoritosRestaurantesItem.nome,
                                                                                                    enderecoRestaurante: listaFavoritosRestaurantesItem.endereco,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                        ).then((value) => safeSetState(() => _model.removerRestaurante = value));

                                                                                        if (_model.removerRestaurante == true) {
                                                                                          while (_model.contador < _model.favoritos.length) {
                                                                                            if (listaFavoritosRestaurantesItem.idRestaurante == _model.favoritos.elementAtOrNull(_model.contador)?.idRestaurantes) {
                                                                                              _model.removeAtIndexFromFavoritos(_model.contador);
                                                                                              safeSetState(() {});
                                                                                              await FavoritosTable().delete(
                                                                                                matchingRows: (rows) => rows
                                                                                                    .eqOrNull(
                                                                                                      'id_cliente',
                                                                                                      currentUserUid,
                                                                                                    )
                                                                                                    .eqOrNull(
                                                                                                      'id_restaurantes',
                                                                                                      listaFavoritosRestaurantesItem.idRestaurante,
                                                                                                    ),
                                                                                              );
                                                                                              _model.contador = 0;
                                                                                              safeSetState(() {});
                                                                                              safeSetState(() {
                                                                                                FFAppState().clearCacheFavoritosRestaurantesCache();
                                                                                                _model.apiRequestCompleted1 = false;
                                                                                              });
                                                                                              FFAppState().clearCacheFavoritosRestaurantesCache();
                                                                                              break;
                                                                                            } else {
                                                                                              _model.contador = _model.contador + 1;
                                                                                              safeSetState(() {});
                                                                                            }
                                                                                          }
                                                                                          await action_blocks.actionLogAtividades(
                                                                                            context,
                                                                                            atividade: 'Restaurante Desfavoritado: ${listaFavoritosRestaurantesItem.idRestaurante.toString()}',
                                                                                          );
                                                                                        }

                                                                                        safeSetState(() {});
                                                                                      },
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                12.0,
                                                                                0.0,
                                                                                4.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Container(
                                                                                  width: 50.0,
                                                                                  height: 50.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    borderRadius: BorderRadius.circular(12.0),
                                                                                    border: Border.all(
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsets.all(2.0),
                                                                                    child: Hero(
                                                                                      tag: '${listaFavoritosRestaurantesItem.logomarca}',
                                                                                      transitionOnUserGestures: true,
                                                                                      child: ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(10.0),
                                                                                        child: Image.network(
                                                                                          '${listaFavoritosRestaurantesItem.logomarca}',
                                                                                          fit: BoxFit.cover,
                                                                                          errorBuilder: (context, error, stackTrace) => Image.asset(
                                                                                            'assets/images/error_image.png',
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Flexible(
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Expanded(
                                                                                            child: Text(
                                                                                              listaFavoritosRestaurantesItem.nome,
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
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Icon(
                                                                                                Icons.star_sharp,
                                                                                                color: Color(0xFFFFA500),
                                                                                                size: 18.0,
                                                                                              ),
                                                                                              Text(
                                                                                                formatNumber(
                                                                                                  listaFavoritosRestaurantesItem.mediaAvaliacoes,
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
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          FaIcon(
                                                                                            FontAwesomeIcons.map,
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            size: 16.0,
                                                                                          ),
                                                                                          Flexible(
                                                                                            child: Text(
                                                                                              functions.extractAddressUntilNeighborhood(listaFavoritosRestaurantesItem.endereco),
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
                                                                                    ].divide(SizedBox(height: 4.0)),
                                                                                  ),
                                                                                ),
                                                                              ].divide(SizedBox(width: 10.0)),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  } else {
                                                    return Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.asset(
                                                            'assets/images/unboxing_11747863.png',
                                                            width: 200.0,
                                                            height: 200.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Text(
                                                            'Sem Restaurantes Salvos',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ),
                                                        Text(
                                                          'Parece que você ainda não salvou nenhum restaurante. Explore e adicione seus favoritos!',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 15.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        FFButtonWidget(
                                                          onPressed: () async {
                                                            context.pushNamed(
                                                                RestaurantesWidget
                                                                    .routeName);
                                                          },
                                                          text:
                                                              'Descobrir Restaurantes',
                                                          options:
                                                              FFButtonOptions(
                                                            height: 40.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontStyle,
                                                                    ),
                                                            elevation: 0.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          height: 16.0)),
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
                        selectedPage: 'salvos',
                      ),
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
