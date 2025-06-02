import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'termos_uso_model.dart';
export 'termos_uso_model.dart';

class TermosUsoWidget extends StatefulWidget {
  const TermosUsoWidget({super.key});

  static String routeName = 'TermosUso';
  static String routePath = '/termosUso';

  @override
  State<TermosUsoWidget> createState() => _TermosUsoWidgetState();
}

class _TermosUsoWidgetState extends State<TermosUsoWidget> {
  late TermosUsoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermosUsoModel());

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
                        EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 16.0, 0.0),
                              child: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel euismod ligula. Donec nec aliquet leo. Sed volutpat tellus in ipsum commodo semper. Ut nec felis efficitur nisi pretium tempor et sit amet erat. Proin semper neque urna, vel bibendum dolor dictum et. Nam nec mi ut purus consequat consectetur. Proin vel auctor metus.\n\nFusce ac ipsum id orci faucibus placerat. Vivamus a enim suscipit, sollicitudin quam quis, sollicitudin magna. Integer gravida nec mauris sed vestibulum. Quisque consequat erat in odio tristique lobortis. Praesent finibus mauris in ante luctus finibus. Nulla facilisi. Vestibulum accumsan egestas euismod. Quisque lorem magna, aliquam eu purus vitae, ultricies feugiat nulla. Morbi ut dui semper, dignissim turpis vel, convallis libero. Sed purus ante, fermentum eu facilisis eget, semper id ligula. Integer id molestie lectus, eu blandit ligula. In eu risus euismod est blandit ultrices.\n\nEtiam justo neque, auctor sit amet condimentum nec, cursus vestibulum eros. Morbi dolor nisl, egestas sed enim et, rhoncus euismod odio. Fusce ligula diam, posuere non auctor eu, ullamcorper at felis. Vestibulum et est molestie, tincidunt nisi sed, ultrices elit. Maecenas ex ligula, dictum ut diam ut, bibendum placerat leo. Donec nibh justo, pharetra non commodo finibus, eleifend at metus. Integer non velit mattis, facilisis risus sed, mattis ligula. Praesent efficitur massa ut ipsum convallis faucibus. Vestibulum et velit nunc. Nulla imperdiet diam id ligula ultrices posuere. Nullam blandit nisl eu condimentum rutrum. Vivamus tempor justo faucibus posuere vestibulum. Etiam gravida, tellus sit amet ultricies pellentesque, leo arcu elementum nibh, vitae imperdiet odio eros at sem.\n\nFusce sit amet dolor ac urna accumsan tincidunt. Cras felis dolor, tristique vel faucibus vel, venenatis eu turpis. Integer at efficitur turpis, eget vehicula lacus. Etiam finibus purus ac odio facilisis, vitae venenatis ante dapibus. Sed varius vitae leo id finibus. Vestibulum aliquam lectus non volutpat rhoncus. In mattis pretium justo, eget efficitur diam consequat a. Duis blandit, risus in consectetur consectetur, purus nisl ultrices erat, et suscipit justo urna et neque. Nulla vehicula ipsum justo, quis laoreet elit accumsan vel. Nunc porta nulla ut nibh rutrum viverra. Sed et nulla eros. Maecenas tristique velit volutpat, tempor lectus non, egestas nibh. Vestibulum interdum augue et dolor tempor vehicula. Ut et est vel eros fermentum auctor.\n\nAliquam laoreet felis pellentesque, semper purus sit amet, pellentesque enim. Maecenas fermentum, dui eget vehicula sagittis, libero ex condimentum eros, vel feugiat dolor velit et purus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Ut tempus elit fringilla tristique rhoncus. Integer at efficitur sapien. Praesent semper diam sed mollis malesuada. Duis blandit rutrum pharetra. Ut vehicula eros quis nisi semper commodo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam ornare consectetur lacus. Nunc posuere eros in erat viverra luctus cursus a lectus. Donec finibus purus a ultrices posuere. Aenean aliquam tortor bibendum nisi finibus porta.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
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
                              context.safePop();
                            },
                          ),
                          Text(
                            'Termos de uso e Privacidade',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                            ),
                          ),
                          Container(
                            width: 24.0,
                            height: 24.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                        ],
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
