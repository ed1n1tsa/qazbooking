import '/flutter_flow/flutter_flow_util.dart';
import 'calculator_age_widget.dart' show CalculatorAgeWidget;
import 'package:flutter/material.dart';

class CalculatorAgeModel extends FlutterFlowModel<CalculatorAgeWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for age11 widget.
  FocusNode? age11FocusNode;
  TextEditingController? age11TextController;
  String? Function(BuildContext, String?)? age11TextControllerValidator;
  // State field(s) for age12 widget.
  FocusNode? age12FocusNode;
  TextEditingController? age12TextController;
  String? Function(BuildContext, String?)? age12TextControllerValidator;
  // State field(s) for age21 widget.
  FocusNode? age21FocusNode;
  TextEditingController? age21TextController;
  String? Function(BuildContext, String?)? age21TextControllerValidator;
  // State field(s) for age22 widget.
  FocusNode? age22FocusNode;
  TextEditingController? age22TextController;
  String? Function(BuildContext, String?)? age22TextControllerValidator;
  // State field(s) for age31 widget.
  FocusNode? age31FocusNode;
  TextEditingController? age31TextController;
  String? Function(BuildContext, String?)? age31TextControllerValidator;
  // State field(s) for age32 widget.
  FocusNode? age32FocusNode;
  TextEditingController? age32TextController;
  String? Function(BuildContext, String?)? age32TextControllerValidator;
  // State field(s) for age41 widget.
  FocusNode? age41FocusNode;
  TextEditingController? age41TextController;
  String? Function(BuildContext, String?)? age41TextControllerValidator;
  // State field(s) for age42 widget.
  FocusNode? age42FocusNode;
  TextEditingController? age42TextController;
  String? Function(BuildContext, String?)? age42TextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    age11FocusNode?.dispose();
    age11TextController?.dispose();

    age12FocusNode?.dispose();
    age12TextController?.dispose();

    age21FocusNode?.dispose();
    age21TextController?.dispose();

    age22FocusNode?.dispose();
    age22TextController?.dispose();

    age31FocusNode?.dispose();
    age31TextController?.dispose();

    age32FocusNode?.dispose();
    age32TextController?.dispose();

    age41FocusNode?.dispose();
    age41TextController?.dispose();

    age42FocusNode?.dispose();
    age42TextController?.dispose();
  }
}
