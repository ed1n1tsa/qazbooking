import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'zayakitest_widget.dart' show ZayakitestWidget;
import 'package:flutter/material.dart';

class ZayakitestModel extends FlutterFlowModel<ZayakitestWidget> {
  ///  Local state fields for this page.

  bool viewCard = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for DropDowncat widget.
  String? dropDowncatValue;
  FormFieldController<String>? dropDowncatValueController;
  // State field(s) for DropDownzone widget.
  String? dropDownzoneValue;
  FormFieldController<String>? dropDownzoneValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
