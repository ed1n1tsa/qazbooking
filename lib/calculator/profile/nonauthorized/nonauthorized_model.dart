import '/clientpages/guest/navbartop/navbartop_widget.dart';
import '/clientpages/navbar_bot/navbar_bot_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'nonauthorized_widget.dart' show NonauthorizedWidget;
import 'package:flutter/material.dart';

class NonauthorizedModel extends FlutterFlowModel<NonauthorizedWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navbartop component.
  late NavbartopModel navbartopModel;
  // Model for navbarBot component.
  late NavbarBotModel navbarBotModel;

  @override
  void initState(BuildContext context) {
    navbartopModel = createModel(context, () => NavbartopModel());
    navbarBotModel = createModel(context, () => NavbarBotModel());
  }

  @override
  void dispose() {
    navbartopModel.dispose();
    navbarBotModel.dispose();
  }
}
