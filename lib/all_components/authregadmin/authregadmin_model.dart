import '/flutter_flow/flutter_flow_util.dart';
import 'authregadmin_widget.dart' show AuthregadminWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AuthregadminModel extends FlutterFlowModel<AuthregadminWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  late MaskTextInputFormatter phoneMask;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for psw widget.
  FocusNode? pswFocusNode;
  TextEditingController? pswTextController;
  late bool pswVisibility;
  String? Function(BuildContext, String?)? pswTextControllerValidator;
  // State field(s) for copsw widget.
  FocusNode? copswFocusNode;
  TextEditingController? copswTextController;
  late bool copswVisibility;
  String? Function(BuildContext, String?)? copswTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {
    pswVisibility = false;
    copswVisibility = false;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    pswFocusNode?.dispose();
    pswTextController?.dispose();

    copswFocusNode?.dispose();
    copswTextController?.dispose();
  }
}
