import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'calculator2_admin_widget.dart' show Calculator2AdminWidget;
import 'package:flutter/material.dart';

class Calculator2AdminModel extends FlutterFlowModel<Calculator2AdminWidget> {
  ///  Local state fields for this page.

  bool? raas = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for CountController widget.
  int? countControllerValue1;
  // State field(s) for CountController widget.
  int? countControllerValue2;
  // State field(s) for CountController widget.
  int? countControllerValue3;
  // State field(s) for CountController widget.
  int? countControllerValue4;
  // Stores action output result for [Custom Action - calculateTotalprice] action in Button widget.
  double? totalprice;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
