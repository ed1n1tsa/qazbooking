import '/flutter_flow/flutter_flow_util.dart';
import 'shakmatka_box_room_edit_widget.dart' show ShakmatkaBoxRoomEditWidget;
import 'package:flutter/material.dart';

class ShakmatkaBoxRoomEditModel
    extends FlutterFlowModel<ShakmatkaBoxRoomEditWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for number widget.
  FocusNode? numberFocusNode;
  TextEditingController? numberTextController;
  String? Function(BuildContext, String?)? numberTextControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // State field(s) for Switch widget.
  bool? switchValue3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    numberFocusNode?.dispose();
    numberTextController?.dispose();
  }
}
