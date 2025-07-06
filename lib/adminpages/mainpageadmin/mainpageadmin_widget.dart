import '/all_components/adminpanelnabar/adminpanelnabar_widget.dart';
import '/all_components/item_map_view/item_map_view_widget.dart';
import '/all_components/turi/turi_widget.dart';
import '/backend/supabase/supabase.dart';
import '/clientpages/guest/otdih/otdih_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mainpageadmin_model.dart';
export 'mainpageadmin_model.dart';

class MainpageadminWidget extends StatefulWidget {
  const MainpageadminWidget({super.key});

  static String routeName = 'mainpageadmin';
  static String routePath = '/mainpageadmin';

  @override
  State<MainpageadminWidget> createState() => _MainpageadminWidgetState();
}

class _MainpageadminWidgetState extends State<MainpageadminWidget>
    with TickerProviderStateMixin {
  late MainpageadminModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainpageadminModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
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
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 50.0, 24.0, 8.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10.0,
                                color: Color(0x33000000),
                                offset: Offset(
                                  0.0,
                                  5.0,
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'supsrdwv' /* QAZBOOKING */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.roboto(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF67B73A),
                                                fontSize: 18.0,
                                                letterSpacing: 3.0,
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Color(0xFF67B73A),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      setAppLanguage(context, 'ru');
                                    },
                                    child: Icon(
                                      Icons.language_sharp,
                                      color: Color(0xFF67B73A),
                                      size: 20.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 78.0),
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  Align(
                                    alignment: Alignment(0.0, 0),
                                    child: TabBar(
                                      isScrollable: true,
                                      labelColor: Color(0xFF67B73A),
                                      unselectedLabelColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      labelPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              15.0, 30.0, 15.0, 1.0),
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                      unselectedLabelStyle: TextStyle(),
                                      indicatorColor: Color(0xFF67B73A),
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 4.0, 20.0, 4.0),
                                      tabs: [
                                        Tab(
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'b06s3jx1' /* Базы отдыха */,
                                          ),
                                          icon: FaIcon(
                                            FontAwesomeIcons.umbrellaBeach,
                                            color: Color(0xFF67B73A),
                                            size: 24.0,
                                          ),
                                          iconMargin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 5.0),
                                        ),
                                        Tab(
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            '0c18hpsy' /*   Туры */,
                                          ),
                                          icon: FaIcon(
                                            FontAwesomeIcons.briefcase,
                                            color: Color(0xFF67B73A),
                                            size: 24.0,
                                          ),
                                          iconMargin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  18.0, 0.0, 15.0, 5.0),
                                        ),
                                        Tab(
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'civ8ivto' /* Всё для отдыха */,
                                          ),
                                          icon: Icon(
                                            Icons.shopping_bag_sharp,
                                            color: Color(0xFF67B73A),
                                            size: 24.0,
                                          ),
                                          iconMargin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 15.0, 5.0),
                                        ),
                                      ],
                                      controller: _model.tabBarController,
                                      onTap: (i) async {
                                        [
                                          () async {
                                            context.pushNamed(
                                                BazaotdiharesultsWidget
                                                    .routeName);
                                          },
                                          () async {},
                                          () async {}
                                        ][i]();
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    child: TabBarView(
                                      controller: _model.tabBarController,
                                      children: [
                                        FutureBuilder<List<BazaotdihaRow>>(
                                          future: BazaotdihaTable().queryRows(
                                            queryFn: (q) => q.eqOrNull(
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
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            List<BazaotdihaRow>
                                                listViewBazaotdihaRowList =
                                                snapshot.data!;

                                            return ListView.builder(
                                              padding: EdgeInsets.zero,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount:
                                                  listViewBazaotdihaRowList
                                                      .length,
                                              itemBuilder:
                                                  (context, listViewIndex) {
                                                final listViewBazaotdihaRow =
                                                    listViewBazaotdihaRowList[
                                                        listViewIndex];
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    FFAppState().boid =
                                                        listViewBazaotdihaRow
                                                            .id;
                                                    safeSetState(() {});

                                                    context.pushNamed(
                                                      ProsmotrGuestWidget
                                                          .routeName,
                                                      queryParameters: {
                                                        'iditem':
                                                            serializeParam(
                                                          0,
                                                          ParamType.int,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  },
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .itemMapViewModels
                                                        .getModel(
                                                      FFAppState().key4,
                                                      listViewIndex,
                                                    ),
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: ItemMapViewWidget(
                                                      key: Key(
                                                        'Key1ti_${FFAppState().key4}',
                                                      ),
                                                      photo1:
                                                          listViewBazaotdihaRow
                                                              .photo,
                                                      id: listViewBazaotdihaRow
                                                          .id,
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                        wrapWithModel(
                                          model: _model.turiModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: TuriWidget(),
                                        ),
                                        wrapWithModel(
                                          model: _model.otdihModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: OtdihWidget(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.99),
                  child: wrapWithModel(
                    model: _model.adminpanelnabarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: AdminpanelnabarWidget(),
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
