import '/all_components/adminpanelnabar/adminpanelnabar_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'adminprofile_widget.dart' show AdminprofileWidget;
import 'package:flutter/material.dart';

class AdminprofileModel extends FlutterFlowModel<AdminprofileWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Delete User)] action in Container widget.
  ApiCallResponse? apiResultojq;
  // Model for adminpanelnabar component.
  late AdminpanelnabarModel adminpanelnabarModel;

  @override
  void initState(BuildContext context) {
    adminpanelnabarModel = createModel(context, () => AdminpanelnabarModel());
  }

  @override
  void dispose() {
    adminpanelnabarModel.dispose();
  }
}
