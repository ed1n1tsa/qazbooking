import '/all_components/item_map_view/item_map_view_widget.dart';
import '/backend/supabase/supabase.dart';
import '/clientpages/search_baza_otdiha/search_baza_otdiha_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'bazaotdiharesults_model.dart';
export 'bazaotdiharesults_model.dart';

class BazaotdiharesultsWidget extends StatefulWidget {
  const BazaotdiharesultsWidget({super.key});

  static String routeName = 'bazaotdiharesults';
  static String routePath = '/bazaotdiharesults';

  @override
  State<BazaotdiharesultsWidget> createState() =>
      _BazaotdiharesultsWidgetState();
}

class _BazaotdiharesultsWidgetState extends State<BazaotdiharesultsWidget> {
  late BazaotdiharesultsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BazaotdiharesultsModel());

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
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 40.0,
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'jdjzf149' /* Поиск базы отдыха */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Color(0xFF67B73A),
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            primary: false,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 146.7,
                  height: 39.72,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Builder(
                    builder: (context) => FFButtonWidget(
                      onPressed: () async {
                        await showDialog(
                          context: context,
                          builder: (dialogContext) {
                            return Dialog(
                              elevation: 0,
                              insetPadding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              alignment: AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              child: WebViewAware(
                                child: GestureDetector(
                                  onTap: () {
                                    FocusScope.of(dialogContext).unfocus();
                                    FocusManager.instance.primaryFocus
                                        ?.unfocus();
                                  },
                                  child: SearchBazaOtdihaWidget(),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      text: FFLocalizations.of(context).getText(
                        '0h0ncz48' /* Фильтр */,
                      ),
                      options: FFButtonOptions(
                        height: 0.72,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFF67B73A),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  font: GoogleFonts.interTight(
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
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: FutureBuilder<List<BazaotdihaRow>>(
                    future: BazaotdihaTable().queryRows(
                      queryFn: (q) => q
                          .eqOrNull(
                            'zona',
                            valueOrDefault<String>(
                              FFAppState().filterzone,
                              '100',
                            ),
                          )
                          .lteOrNull(
                            'price',
                            valueOrDefault<int>(
                              FFAppState().filterprice2,
                              1000000,
                            ),
                          )
                          .gteOrNull(
                            'price',
                            valueOrDefault<int>(
                              FFAppState().filterprice1,
                              0,
                            ),
                          )
                          .lteOrNull(
                            'udalennost',
                            valueOrDefault<int>(
                              FFAppState().filterudalennost,
                              300,
                            ),
                          )
                          .lteOrNull(
                            'udalennostQ',
                            valueOrDefault<int>(
                              FFAppState().filterUdalennostQ,
                              300,
                            ),
                          )
                          .inFilterOrNull(
                            'storona',
                            FFAppState().filterbereg,
                          )
                          .gteOrNull(
                            'bassein',
                            valueOrDefault<int>(
                              FFAppState().filterb,
                              0,
                            ),
                          )
                          .gteOrNull(
                            'detsP',
                            valueOrDefault<int>(
                              FFAppState().filterd,
                              0,
                            ),
                          )
                          .gteOrNull(
                            'transfer',
                            valueOrDefault<int>(
                              FFAppState().filtert,
                              0,
                            ),
                          )
                          .gteOrNull(
                            'cafe',
                            valueOrDefault<int>(
                              FFAppState().filterc,
                              0,
                            ),
                          )
                          .gteOrNull(
                            'parking',
                            valueOrDefault<int>(
                              FFAppState().filterp,
                              0,
                            ),
                          )
                          .eqOrNull(
                            'statud',
                            true,
                          ),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<BazaotdihaRow> listViewBazaotdihaRowList =
                          snapshot.data!;

                      return ListView.builder(
                        padding: EdgeInsets.fromLTRB(
                          0,
                          0,
                          0,
                          50.0,
                        ),
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewBazaotdihaRowList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewBazaotdihaRow =
                              listViewBazaotdihaRowList[listViewIndex];
                          return Container(
                            width: 100.0,
                            height: 302.6,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().boid = listViewBazaotdihaRow.id;
                                safeSetState(() {});

                                context.pushNamed(
                                  ProsmotrGuestWidget.routeName,
                                  queryParameters: {
                                    'iditem': serializeParam(
                                      1,
                                      ParamType.int,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: wrapWithModel(
                                model: _model.itemMapViewModels.getModel(
                                  FFAppState().unqkey,
                                  listViewIndex,
                                ),
                                updateCallback: () => safeSetState(() {}),
                                child: ItemMapViewWidget(
                                  key: Key(
                                    'Keybie_${FFAppState().unqkey}',
                                  ),
                                  photo1: listViewBazaotdihaRow.photo,
                                  id: listViewBazaotdihaRow.id,
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
