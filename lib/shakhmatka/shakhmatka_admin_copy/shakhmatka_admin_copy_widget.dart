import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/shakhmatka/shakmatka_box_copy/shakmatka_box_copy_widget.dart';
import '/shakhmatka/shakmatka_box_room_edit/shakmatka_box_room_edit_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'shakhmatka_admin_copy_model.dart';
export 'shakhmatka_admin_copy_model.dart';

class ShakhmatkaAdminCopyWidget extends StatefulWidget {
  const ShakhmatkaAdminCopyWidget({super.key});

  static String routeName = 'shakhmatkaAdminCopy';
  static String routePath = '/shakhmatkaAdminCopy';

  @override
  State<ShakhmatkaAdminCopyWidget> createState() =>
      _ShakhmatkaAdminCopyWidgetState();
}

class _ShakhmatkaAdminCopyWidgetState extends State<ShakhmatkaAdminCopyWidget> {
  late ShakhmatkaAdminCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShakhmatkaAdminCopyModel());

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
          backgroundColor: Color(0xFF67B73A),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed(ShakmatkaadminpanelWidget.routeName);
            },
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flex(
                    direction: Axis.vertical,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Container(
                              width: 100.22,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                              ),
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 201.7,
                                    height: 20.0,
                                    decoration: BoxDecoration(),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                  ),
                                  Container(
                                    width: 201.7,
                                    height: 23.0,
                                    decoration: BoxDecoration(),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '6slw4dp9' /* Эконом */,
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
                                    ),
                                  ),
                                  FutureBuilder<List<RoomsRow>>(
                                    future: RoomsTable().queryRows(
                                      queryFn: (q) => q
                                          .eqOrNull(
                                            'class',
                                            ' Эконом',
                                          )
                                          .eqOrNull(
                                            'bo_id',
                                            FFAppState().boid,
                                          )
                                          .order('number', ascending: true),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 20.0,
                                            height: 20.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<RoomsRow> listViewRoomsRowList =
                                          snapshot.data!;

                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: listViewRoomsRowList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewRoomsRow =
                                              listViewRoomsRowList[
                                                  listViewIndex];
                                          return Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Builder(
                                              builder: (context) => InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  FFAppState().roomid =
                                                      listViewRoomsRow.id;
                                                  safeSetState(() {});
                                                  await showDialog(
                                                    context: context,
                                                    builder: (dialogContext) {
                                                      return Dialog(
                                                        elevation: 0,
                                                        insetPadding:
                                                            EdgeInsets.zero,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        alignment:
                                                            AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        child: WebViewAware(
                                                          child:
                                                              GestureDetector(
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
                                                                ShakmatkaBoxRoomEditWidget(),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                                child: Container(
                                                  width: 148.4,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    border: Border.all(
                                                      width: 1.0,
                                                    ),
                                                  ),
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text(
                                                        valueOrDefault<String>(
                                                          listViewRoomsRow
                                                              .number
                                                              .toString(),
                                                          '100',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                      Text(
                                                        '🛏️: ${valueOrDefault<String>(
                                                          listViewRoomsRow.beds
                                                              ?.toString(),
                                                          '1',
                                                        )}',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                    ]
                                                        .divide(SizedBox(
                                                            width: 5.0))
                                                        .addToStart(SizedBox(
                                                            width: 10.0)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                  Container(
                                    width: 201.7,
                                    height: 20.0,
                                    decoration: BoxDecoration(),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '8o4mz99c' /* Стандарт */,
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
                                    ),
                                  ),
                                  FutureBuilder<List<RoomsRow>>(
                                    future: RoomsTable().queryRows(
                                      queryFn: (q) => q
                                          .eqOrNull(
                                            'class',
                                            'Стандарт',
                                          )
                                          .eqOrNull(
                                            'bo_id',
                                            FFAppState().boid,
                                          )
                                          .order('number', ascending: true),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 20.0,
                                            height: 20.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<RoomsRow> listViewRoomsRowList =
                                          snapshot.data!;

                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: listViewRoomsRowList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewRoomsRow =
                                              listViewRoomsRowList[
                                                  listViewIndex];
                                          return Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Builder(
                                              builder: (context) => InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  FFAppState().roomid =
                                                      listViewRoomsRow.id;
                                                  safeSetState(() {});
                                                  await showDialog(
                                                    context: context,
                                                    builder: (dialogContext) {
                                                      return Dialog(
                                                        elevation: 0,
                                                        insetPadding:
                                                            EdgeInsets.zero,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        alignment:
                                                            AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        child: WebViewAware(
                                                          child:
                                                              GestureDetector(
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
                                                                ShakmatkaBoxRoomEditWidget(),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                                child: Container(
                                                  width: 148.4,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    border: Border.all(
                                                      width: 1.0,
                                                    ),
                                                  ),
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text(
                                                        valueOrDefault<String>(
                                                          listViewRoomsRow
                                                              .number
                                                              .toString(),
                                                          '100',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                      Text(
                                                        '🛏️: ${valueOrDefault<String>(
                                                          listViewRoomsRow.beds
                                                              ?.toString(),
                                                          '1',
                                                        )}',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                    ]
                                                        .divide(SizedBox(
                                                            width: 5.0))
                                                        .addToStart(SizedBox(
                                                            width: 10.0)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                  Container(
                                    width: 201.7,
                                    height: 20.0,
                                    decoration: BoxDecoration(),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '8dt9bh39' /* Люкс */,
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
                                    ),
                                  ),
                                  FutureBuilder<List<RoomsRow>>(
                                    future: RoomsTable().queryRows(
                                      queryFn: (q) => q
                                          .eqOrNull(
                                            'class',
                                            'Люкс',
                                          )
                                          .eqOrNull(
                                            'bo_id',
                                            FFAppState().boid,
                                          )
                                          .order('number', ascending: true),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 20.0,
                                            height: 20.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<RoomsRow> listViewRoomsRowList =
                                          snapshot.data!;

                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: listViewRoomsRowList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewRoomsRow =
                                              listViewRoomsRowList[
                                                  listViewIndex];
                                          return Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Builder(
                                              builder: (context) => InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  FFAppState().roomid =
                                                      listViewRoomsRow.id;
                                                  safeSetState(() {});
                                                  await showDialog(
                                                    context: context,
                                                    builder: (dialogContext) {
                                                      return Dialog(
                                                        elevation: 0,
                                                        insetPadding:
                                                            EdgeInsets.zero,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        alignment:
                                                            AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        child: WebViewAware(
                                                          child:
                                                              GestureDetector(
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
                                                                ShakmatkaBoxRoomEditWidget(),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                                child: Container(
                                                  width: 148.4,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    border: Border.all(
                                                      width: 1.0,
                                                    ),
                                                  ),
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text(
                                                        valueOrDefault<String>(
                                                          listViewRoomsRow
                                                              .number
                                                              .toString(),
                                                          '100',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                      Text(
                                                        '🛏️: ${valueOrDefault<String>(
                                                          listViewRoomsRow.beds
                                                              ?.toString(),
                                                          '1',
                                                        )}',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                    ]
                                                        .divide(SizedBox(
                                                            width: 5.0))
                                                        .addToStart(SizedBox(
                                                            width: 10.0)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0x00FFFFFF),
                            ),
                            alignment: AlignmentDirectional(-1.0, -1.0),
                            child: SingleChildScrollView(
                              primary: false,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.7,
                                            height: 567.6,
                                            decoration: BoxDecoration(),
                                            alignment: AlignmentDirectional(
                                                -1.0, -1.0),
                                            child: Builder(
                                              builder: (context) {
                                                final date = functions
                                                    .generateNext90Days()
                                                    .take(90)
                                                    .toList();

                                                return ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemCount: date.length,
                                                  itemBuilder:
                                                      (context, dateIndex) {
                                                    final dateItem =
                                                        date[dateIndex];
                                                    return Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          width: 20.0,
                                                          height: 23.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border.all(
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Text(
                                                            dateTimeFormat(
                                                              "d     MMM     E",
                                                              dateItem,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
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
                                                                  fontSize: 9.0,
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
                                                        ),
                                                        Container(
                                                          width: 20.0,
                                                          height: 20.0,
                                                          decoration:
                                                              BoxDecoration(),
                                                        ),
                                                        Container(
                                                          width: 20.0,
                                                          child: FutureBuilder<
                                                              List<RoomsRow>>(
                                                            future: RoomsTable()
                                                                .queryRows(
                                                              queryFn: (q) => q
                                                                  .eqOrNull(
                                                                    'class',
                                                                    ' Эконом',
                                                                  )
                                                                  .eqOrNull(
                                                                    'bo_id',
                                                                    FFAppState()
                                                                        .boid,
                                                                  )
                                                                  .order(
                                                                      'number',
                                                                      ascending:
                                                                          true),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 20.0,
                                                                    height:
                                                                        20.0,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      valueColor:
                                                                          AlwaysStoppedAnimation<
                                                                              Color>(
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<RoomsRow>
                                                                  listViewRoomsRowList =
                                                                  snapshot
                                                                      .data!;

                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                primary: false,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    listViewRoomsRowList
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        listViewIndex) {
                                                                  final listViewRoomsRow =
                                                                      listViewRoomsRowList[
                                                                          listViewIndex];
                                                                  return Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Builder(
                                                                      builder: (context) =>
                                                                          FutureBuilder<
                                                                              List<BookingsRow>>(
                                                                        future:
                                                                            BookingsTable().queryRows(
                                                                          queryFn: (q) => q
                                                                              .lteOrNull(
                                                                                'check_in',
                                                                                supaSerialize<DateTime>(functions.dayBefore(dateItem)),
                                                                              )
                                                                              .gteOrNull(
                                                                                'check_out',
                                                                                supaSerialize<DateTime>(dateItem),
                                                                              )
                                                                              .eqOrNull(
                                                                                'bo_id',
                                                                                FFAppState().boid,
                                                                              )
                                                                              .eqOrNull(
                                                                                'room_id',
                                                                                listViewRoomsRow.id,
                                                                              ),
                                                                        ),
                                                                        builder:
                                                                            (context,
                                                                                snapshot) {
                                                                          // Customize what your widget looks like when it's loading.
                                                                          if (!snapshot
                                                                              .hasData) {
                                                                            return Center(
                                                                              child: SizedBox(
                                                                                width: 20.0,
                                                                                height: 20.0,
                                                                                child: CircularProgressIndicator(
                                                                                  valueColor: AlwaysStoppedAnimation<Color>(
                                                                                    FlutterFlowTheme.of(context).primary,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          }
                                                                          List<BookingsRow>
                                                                              containerBookingsRowList =
                                                                              snapshot.data!;

                                                                          return InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              await showDialog(
                                                                                context: context,
                                                                                builder: (dialogContext) {
                                                                                  return Dialog(
                                                                                    elevation: 0,
                                                                                    insetPadding: EdgeInsets.zero,
                                                                                    backgroundColor: Colors.transparent,
                                                                                    alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                    child: WebViewAware(
                                                                                      child: GestureDetector(
                                                                                        onTap: () {
                                                                                          FocusScope.of(dialogContext).unfocus();
                                                                                          FocusManager.instance.primaryFocus?.unfocus();
                                                                                        },
                                                                                        child: ShakmatkaBoxCopyWidget(
                                                                                          shakmatkaBookings: containerBookingsRowList,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              );
                                                                            },
                                                                            child:
                                                                                Container(
                                                                              width: 20.0,
                                                                              height: 20.0,
                                                                              decoration: BoxDecoration(
                                                                                color: () {
                                                                                  if (functions.getBookingStatusForCell(dateItem, listViewRoomsRow.id, containerBookingsRowList.toList()) == 'check_in') {
                                                                                    return FlutterFlowTheme.of(context).warning;
                                                                                  } else if (functions.getBookingStatusForCell(dateItem, listViewRoomsRow.id, containerBookingsRowList.toList()) == 'check_out') {
                                                                                    return FlutterFlowTheme.of(context).warning;
                                                                                  } else if (functions.getBookingStatusForCell(dateItem, listViewRoomsRow.id, containerBookingsRowList.toList()) == 'full') {
                                                                                    return FlutterFlowTheme.of(context).error;
                                                                                  } else if (functions.getBookingStatusForCell(dateItem, listViewRoomsRow.id, containerBookingsRowList.toList()) == 'weekend') {
                                                                                    return Color(0x7E39D2C0);
                                                                                  } else {
                                                                                    return FlutterFlowTheme.of(context).primaryBackground;
                                                                                  }
                                                                                }(),
                                                                                border: Border.all(
                                                                                  width: 1.0,
                                                                                ),
                                                                              ),
                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 20.0,
                                                          height: 20.0,
                                                          decoration:
                                                              BoxDecoration(),
                                                        ),
                                                        Container(
                                                          width: 20.0,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: FutureBuilder<
                                                              List<RoomsRow>>(
                                                            future: RoomsTable()
                                                                .queryRows(
                                                              queryFn: (q) => q
                                                                  .eqOrNull(
                                                                    'class',
                                                                    'Стандарт',
                                                                  )
                                                                  .eqOrNull(
                                                                    'bo_id',
                                                                    FFAppState()
                                                                        .boid,
                                                                  )
                                                                  .order(
                                                                      'number',
                                                                      ascending:
                                                                          true),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 20.0,
                                                                    height:
                                                                        20.0,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      valueColor:
                                                                          AlwaysStoppedAnimation<
                                                                              Color>(
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<RoomsRow>
                                                                  listViewRoomsRowList =
                                                                  snapshot
                                                                      .data!;

                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                primary: false,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    listViewRoomsRowList
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        listViewIndex) {
                                                                  final listViewRoomsRow =
                                                                      listViewRoomsRowList[
                                                                          listViewIndex];
                                                                  return Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Builder(
                                                                      builder: (context) =>
                                                                          FutureBuilder<
                                                                              List<BookingsRow>>(
                                                                        future:
                                                                            BookingsTable().queryRows(
                                                                          queryFn: (q) => q
                                                                              .lteOrNull(
                                                                                'check_in',
                                                                                supaSerialize<DateTime>(functions.dayBefore(dateItem)),
                                                                              )
                                                                              .gteOrNull(
                                                                                'check_out',
                                                                                supaSerialize<DateTime>(dateItem),
                                                                              )
                                                                              .eqOrNull(
                                                                                'room_id',
                                                                                listViewRoomsRow.id,
                                                                              )
                                                                              .eqOrNull(
                                                                                'bo_id',
                                                                                FFAppState().boid,
                                                                              ),
                                                                        ),
                                                                        builder:
                                                                            (context,
                                                                                snapshot) {
                                                                          // Customize what your widget looks like when it's loading.
                                                                          if (!snapshot
                                                                              .hasData) {
                                                                            return Center(
                                                                              child: SizedBox(
                                                                                width: 20.0,
                                                                                height: 20.0,
                                                                                child: CircularProgressIndicator(
                                                                                  valueColor: AlwaysStoppedAnimation<Color>(
                                                                                    FlutterFlowTheme.of(context).primary,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          }
                                                                          List<BookingsRow>
                                                                              containerBookingsRowList =
                                                                              snapshot.data!;

                                                                          return InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              await showDialog(
                                                                                context: context,
                                                                                builder: (dialogContext) {
                                                                                  return Dialog(
                                                                                    elevation: 0,
                                                                                    insetPadding: EdgeInsets.zero,
                                                                                    backgroundColor: Colors.transparent,
                                                                                    alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                    child: WebViewAware(
                                                                                      child: GestureDetector(
                                                                                        onTap: () {
                                                                                          FocusScope.of(dialogContext).unfocus();
                                                                                          FocusManager.instance.primaryFocus?.unfocus();
                                                                                        },
                                                                                        child: ShakmatkaBoxCopyWidget(
                                                                                          shakmatkaBookings: containerBookingsRowList,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              );
                                                                            },
                                                                            child:
                                                                                Container(
                                                                              width: 20.0,
                                                                              height: 20.0,
                                                                              decoration: BoxDecoration(
                                                                                color: () {
                                                                                  if (functions.getBookingStatusForCell(dateItem, listViewRoomsRow.id, containerBookingsRowList.toList()) == 'check_in') {
                                                                                    return FlutterFlowTheme.of(context).warning;
                                                                                  } else if (functions.getBookingStatusForCell(dateItem, listViewRoomsRow.id, containerBookingsRowList.toList()) == 'check_out') {
                                                                                    return FlutterFlowTheme.of(context).warning;
                                                                                  } else if (functions.getBookingStatusForCell(dateItem, listViewRoomsRow.id, containerBookingsRowList.toList()) == 'full') {
                                                                                    return FlutterFlowTheme.of(context).error;
                                                                                  } else if (functions.getBookingStatusForCell(dateItem, listViewRoomsRow.id, containerBookingsRowList.toList()) == 'weekend') {
                                                                                    return Color(0x7E39D2C0);
                                                                                  } else {
                                                                                    return FlutterFlowTheme.of(context).primaryBackground;
                                                                                  }
                                                                                }(),
                                                                                border: Border.all(
                                                                                  width: 1.0,
                                                                                ),
                                                                              ),
                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 20.0,
                                                          height: 20.0,
                                                          decoration:
                                                              BoxDecoration(),
                                                        ),
                                                        Container(
                                                          width: 20.0,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: FutureBuilder<
                                                              List<RoomsRow>>(
                                                            future: RoomsTable()
                                                                .queryRows(
                                                              queryFn: (q) => q
                                                                  .eqOrNull(
                                                                    'class',
                                                                    'Люкс',
                                                                  )
                                                                  .eqOrNull(
                                                                    'bo_id',
                                                                    FFAppState()
                                                                        .boid,
                                                                  )
                                                                  .order(
                                                                      'number',
                                                                      ascending:
                                                                          true),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 20.0,
                                                                    height:
                                                                        20.0,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      valueColor:
                                                                          AlwaysStoppedAnimation<
                                                                              Color>(
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<RoomsRow>
                                                                  listViewRoomsRowList =
                                                                  snapshot
                                                                      .data!;

                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                primary: false,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    listViewRoomsRowList
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        listViewIndex) {
                                                                  final listViewRoomsRow =
                                                                      listViewRoomsRowList[
                                                                          listViewIndex];
                                                                  return Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Builder(
                                                                      builder: (context) =>
                                                                          FutureBuilder<
                                                                              List<BookingsRow>>(
                                                                        future:
                                                                            BookingsTable().queryRows(
                                                                          queryFn: (q) => q
                                                                              .lteOrNull(
                                                                                'check_in',
                                                                                supaSerialize<DateTime>(functions.dayBefore(dateItem)),
                                                                              )
                                                                              .gteOrNull(
                                                                                'check_out',
                                                                                supaSerialize<DateTime>(dateItem),
                                                                              )
                                                                              .eqOrNull(
                                                                                'bo_id',
                                                                                FFAppState().boid,
                                                                              )
                                                                              .eqOrNull(
                                                                                'room_id',
                                                                                listViewRoomsRow.id,
                                                                              ),
                                                                        ),
                                                                        builder:
                                                                            (context,
                                                                                snapshot) {
                                                                          // Customize what your widget looks like when it's loading.
                                                                          if (!snapshot
                                                                              .hasData) {
                                                                            return Center(
                                                                              child: SizedBox(
                                                                                width: 20.0,
                                                                                height: 20.0,
                                                                                child: CircularProgressIndicator(
                                                                                  valueColor: AlwaysStoppedAnimation<Color>(
                                                                                    FlutterFlowTheme.of(context).primary,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          }
                                                                          List<BookingsRow>
                                                                              containerBookingsRowList =
                                                                              snapshot.data!;

                                                                          return InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              await showDialog(
                                                                                context: context,
                                                                                builder: (dialogContext) {
                                                                                  return Dialog(
                                                                                    elevation: 0,
                                                                                    insetPadding: EdgeInsets.zero,
                                                                                    backgroundColor: Colors.transparent,
                                                                                    alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                    child: WebViewAware(
                                                                                      child: GestureDetector(
                                                                                        onTap: () {
                                                                                          FocusScope.of(dialogContext).unfocus();
                                                                                          FocusManager.instance.primaryFocus?.unfocus();
                                                                                        },
                                                                                        child: ShakmatkaBoxCopyWidget(
                                                                                          shakmatkaBookings: containerBookingsRowList,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              );
                                                                            },
                                                                            child:
                                                                                Container(
                                                                              width: 20.0,
                                                                              height: 20.0,
                                                                              decoration: BoxDecoration(
                                                                                color: () {
                                                                                  if (functions.getBookingStatusForCell(dateItem, listViewRoomsRow.id, containerBookingsRowList.toList()) == 'check_in') {
                                                                                    return FlutterFlowTheme.of(context).warning;
                                                                                  } else if (functions.getBookingStatusForCell(dateItem, listViewRoomsRow.id, containerBookingsRowList.toList()) == 'check_out') {
                                                                                    return FlutterFlowTheme.of(context).warning;
                                                                                  } else if (functions.getBookingStatusForCell(dateItem, listViewRoomsRow.id, containerBookingsRowList.toList()) == 'full') {
                                                                                    return FlutterFlowTheme.of(context).error;
                                                                                  } else if (functions.getBookingStatusForCell(dateItem, listViewRoomsRow.id, containerBookingsRowList.toList()) == 'weekend') {
                                                                                    return Color(0x7E39D2C0);
                                                                                  } else {
                                                                                    return FlutterFlowTheme.of(context).primaryBackground;
                                                                                  }
                                                                                }(),
                                                                                border: Border.all(
                                                                                  width: 1.0,
                                                                                ),
                                                                              ),
                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
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
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 1.0),
                    child: Container(
                      width: 176.8,
                      height: 155.28,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FutureBuilder<List<BazaotdihaRow>>(
                                  future: BazaotdihaTable().queryRows(
                                    queryFn: (q) => q,
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<BazaotdihaRow>
                                        buttonBazaotdihaRowList =
                                        snapshot.data!;

                                    return FFButtonWidget(
                                      onPressed: () async {
                                        context.pushNamed(
                                            AddClientWidget.routeName);
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        '0d4ds5r4' /* Добавить клиента */,
                                      ),
                                      options: FFButtonOptions(
                                        width: 170.0,
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0xFF67B73A),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              font: GoogleFonts.interTight(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                            ),
                                        elevation: 0.0,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed(AddroomWidget.routeName);
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    '27r7r6u3' /* Добавить номер */,
                                  ),
                                  options: FFButtonOptions(
                                    width: 170.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0xFF67B73A),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(8.0),
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
          ),
        ),
      ),
    );
  }
}
