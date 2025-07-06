import '/clientpages/guest/detailsitem/detailsitem_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'prosmotr_guest_model.dart';
export 'prosmotr_guest_model.dart';

class ProsmotrGuestWidget extends StatefulWidget {
  const ProsmotrGuestWidget({
    super.key,
    required this.iditem,
  });

  final int? iditem;

  static String routeName = 'prosmotrGuest';
  static String routePath = '/prosmotrGuest';

  @override
  State<ProsmotrGuestWidget> createState() => _ProsmotrGuestWidgetState();
}

class _ProsmotrGuestWidgetState extends State<ProsmotrGuestWidget> {
  late ProsmotrGuestModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProsmotrGuestModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
              context.safePop();
            },
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              Container(
                height: 900.0,
                child: wrapWithModel(
                  model: _model.detailsitemModel,
                  updateCallback: () => safeSetState(() {}),
                  child: DetailsitemWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
