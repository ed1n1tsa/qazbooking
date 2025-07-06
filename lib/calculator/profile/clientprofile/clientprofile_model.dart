import '/backend/api_requests/api_calls.dart';
import '/clientpages/navbar_bot_client/navbar_bot_client_widget.dart';
import '/clientpages/navbartop_client/navbartop_client_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'clientprofile_widget.dart' show ClientprofileWidget;
import 'package:flutter/material.dart';

class ClientprofileModel extends FlutterFlowModel<ClientprofileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navbartopClient component.
  late NavbartopClientModel navbartopClientModel;
  // Stores action output result for [Backend Call - API (Delete User)] action in Container widget.
  ApiCallResponse? apiResultojq;
  // Model for navbarBotClient component.
  late NavbarBotClientModel navbarBotClientModel;

  @override
  void initState(BuildContext context) {
    navbartopClientModel = createModel(context, () => NavbartopClientModel());
    navbarBotClientModel = createModel(context, () => NavbarBotClientModel());
  }

  @override
  void dispose() {
    navbartopClientModel.dispose();
    navbarBotClientModel.dispose();
  }
}
