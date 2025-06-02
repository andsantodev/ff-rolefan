import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/actions/actions.dart' as action_blocks;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'validacao_model.dart';
export 'validacao_model.dart';

class ValidacaoWidget extends StatefulWidget {
  const ValidacaoWidget({super.key});

  static String routeName = 'Validacao';
  static String routePath = '/validacao';

  @override
  State<ValidacaoWidget> createState() => _ValidacaoWidgetState();
}

class _ValidacaoWidgetState extends State<ValidacaoWidget> {
  late ValidacaoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ValidacaoModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().originalScreenHeight =
          MediaQuery.sizeOf(context).height - 70.0;
      safeSetState(() {});
      _model.saidaApiUsuario = await UsuarioGroup.perfilUsuarioCall.call(
        token: currentJwtToken,
        id: 'eq.${currentUserUid}',
      );

      if (UsuarioGroup.perfilUsuarioCall.nome(
                (_model.saidaApiUsuario?.jsonBody ?? ''),
              ) ==
              null ||
          UsuarioGroup.perfilUsuarioCall.nome(
                (_model.saidaApiUsuario?.jsonBody ?? ''),
              ) ==
              '') {
        context.goNamed(
          CompletarPerfilWidget.routeName,
          extra: <String, dynamic>{
            kTransitionInfoKey: TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
              duration: Duration(milliseconds: 0),
            ),
          },
        );

        return;
      } else {
        FFAppState().updatePerfilUsuarioStruct(
          (e) => e
            ..id = UsuarioGroup.perfilUsuarioCall.id(
              (_model.saidaApiUsuario?.jsonBody ?? ''),
            )
            ..createdAt = UsuarioGroup.perfilUsuarioCall.dataCriacao(
              (_model.saidaApiUsuario?.jsonBody ?? ''),
            )
            ..nome = UsuarioGroup.perfilUsuarioCall.nome(
              (_model.saidaApiUsuario?.jsonBody ?? ''),
            )
            ..email = UsuarioGroup.perfilUsuarioCall.email(
              (_model.saidaApiUsuario?.jsonBody ?? ''),
            )
            ..telefone = UsuarioGroup.perfilUsuarioCall.telefone(
              (_model.saidaApiUsuario?.jsonBody ?? ''),
            )
            ..dataNascimento = UsuarioGroup.perfilUsuarioCall.dataNascimento(
              (_model.saidaApiUsuario?.jsonBody ?? ''),
            )
            ..fotoPerfil = UsuarioGroup.perfilUsuarioCall.fotoPerfil(
              (_model.saidaApiUsuario?.jsonBody ?? ''),
            )
            ..modoEscuro = UsuarioGroup.perfilUsuarioCall.modoEscuro(
              (_model.saidaApiUsuario?.jsonBody ?? ''),
            )
            ..rua = UsuarioGroup.perfilUsuarioCall.rua(
              (_model.saidaApiUsuario?.jsonBody ?? ''),
            )
            ..bairro = UsuarioGroup.perfilUsuarioCall.bairro(
              (_model.saidaApiUsuario?.jsonBody ?? ''),
            )
            ..cidade = UsuarioGroup.perfilUsuarioCall.cidade(
              (_model.saidaApiUsuario?.jsonBody ?? ''),
            )
            ..estado = UsuarioGroup.perfilUsuarioCall.estado(
              (_model.saidaApiUsuario?.jsonBody ?? ''),
            )
            ..coordenadas = UsuarioGroup.perfilUsuarioCall.coordenadas(
              (_model.saidaApiUsuario?.jsonBody ?? ''),
            )
            ..idPerfil = UsuarioGroup.perfilUsuarioCall.idPerfil(
              (_model.saidaApiUsuario?.jsonBody ?? ''),
            ),
        );
        safeSetState(() {});
        await action_blocks.actionLogAtividades(
          context,
          atividade: 'Entrou no aplicativo',
        );
        setDarkModeSetting(
          context,
          UsuarioGroup.perfilUsuarioCall.modoEscuro(
            (_model.saidaApiUsuario?.jsonBody ?? ''),
          )!
              ? ThemeMode.dark
              : ThemeMode.light,
        );

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

        FFAppState().clearCacheFavoritosEventosCache();
        FFAppState().clearCacheFavoritosRestaurantesCache();
        return;
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
      child: WillPopScope(
        onWillPop: () async => false,
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
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: 0.0,
                        child: Align(
                          alignment: AlignmentDirectional(1.0, -1.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              GoRouter.of(context).prepareAuthEvent();
                              await authManager.signOut();
                              GoRouter.of(context).clearRedirectLocation();

                              context.goNamedAuth(
                                  BemVindoWidget.routeName, context.mounted);
                            },
                            text: 'Button',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/logo-rolefan.png',
                                width: 240.0,
                                height: 80.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'Carregando...',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
