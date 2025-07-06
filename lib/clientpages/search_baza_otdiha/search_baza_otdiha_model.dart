import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'search_baza_otdiha_widget.dart' show SearchBazaOtdihaWidget;
import 'package:flutter/material.dart';

class SearchBazaOtdihaModel extends FlutterFlowModel<SearchBazaOtdihaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for zone widget.
  String? zoneValue;
  FormFieldController<String>? zoneValueController;
  // State field(s) for price1 widget.
  FocusNode? price1FocusNode;
  TextEditingController? price1TextController;
  String? Function(BuildContext, String?)? price1TextControllerValidator;
  // State field(s) for price2 widget.
  FocusNode? price2FocusNode;
  TextEditingController? price2TextController;
  String? Function(BuildContext, String?)? price2TextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for udalennostber widget.
  int? udalennostberValue;
  FormFieldController<int>? udalennostberValueController;
  // State field(s) for storona widget.
  String? storonaValue;
  FormFieldController<String>? storonaValueController;
  // State field(s) for Arbat widget.
  int? arbatValue;
  FormFieldController<int>? arbatValueController;
  // State field(s) for CheckboxBassein widget.
  bool? checkboxBasseinValue;
  // State field(s) for CheckboxD widget.
  bool? checkboxDValue;
  // State field(s) for CheckboxC widget.
  bool? checkboxCValue;
  // State field(s) for CheckboxP widget.
  bool? checkboxPValue;
  // State field(s) for CheckboxT widget.
  bool? checkboxTValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    price1FocusNode?.dispose();
    price1TextController?.dispose();

    price2FocusNode?.dispose();
    price2TextController?.dispose();
  }
}
