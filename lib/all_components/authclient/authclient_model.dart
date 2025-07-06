import '/flutter_flow/flutter_flow_util.dart';
import 'authclient_widget.dart' show AuthclientWidget;
import 'package:flutter/material.dart';

class AuthclientModel extends FlutterFlowModel<AuthclientWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for psw widget.
  FocusNode? pswFocusNode;
  TextEditingController? pswTextController;
  late bool pswVisibility;
  String? Function(BuildContext, String?)? pswTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {
    pswVisibility = false;
  }

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    pswFocusNode?.dispose();
    pswTextController?.dispose();
  }
}
