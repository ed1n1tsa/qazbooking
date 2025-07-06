import '/flutter_flow/flutter_flow_util.dart';
import 'shakmatka_box_edit_widget.dart' show ShakmatkaBoxEditWidget;
import 'package:flutter/material.dart';

class ShakmatkaBoxEditModel extends FlutterFlowModel<ShakmatkaBoxEditWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for number widget.
  FocusNode? numberFocusNode;
  TextEditingController? numberTextController;
  String? Function(BuildContext, String?)? numberTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for adults widget.
  FocusNode? adultsFocusNode;
  TextEditingController? adultsTextController;
  String? Function(BuildContext, String?)? adultsTextControllerValidator;
  // State field(s) for d1 widget.
  FocusNode? d1FocusNode;
  TextEditingController? d1TextController;
  String? Function(BuildContext, String?)? d1TextControllerValidator;
  // State field(s) for d2 widget.
  FocusNode? d2FocusNode;
  TextEditingController? d2TextController;
  String? Function(BuildContext, String?)? d2TextControllerValidator;
  // State field(s) for d3 widget.
  FocusNode? d3FocusNode;
  TextEditingController? d3TextController;
  String? Function(BuildContext, String?)? d3TextControllerValidator;
  // State field(s) for ostatok widget.
  FocusNode? ostatokFocusNode;
  TextEditingController? ostatokTextController;
  String? Function(BuildContext, String?)? ostatokTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    numberFocusNode?.dispose();
    numberTextController?.dispose();

    adultsFocusNode?.dispose();
    adultsTextController?.dispose();

    d1FocusNode?.dispose();
    d1TextController?.dispose();

    d2FocusNode?.dispose();
    d2TextController?.dispose();

    d3FocusNode?.dispose();
    d3TextController?.dispose();

    ostatokFocusNode?.dispose();
    ostatokTextController?.dispose();
  }
}
