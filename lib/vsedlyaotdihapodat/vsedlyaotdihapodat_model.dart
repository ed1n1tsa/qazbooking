import '/all_components/vsedlyaotdiha/vsedlyaotdiha_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'vsedlyaotdihapodat_widget.dart' show VsedlyaotdihapodatWidget;
import 'package:flutter/material.dart';

class VsedlyaotdihapodatModel
    extends FlutterFlowModel<VsedlyaotdihapodatWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for vsedlyaotdiha component.
  late VsedlyaotdihaModel vsedlyaotdihaModel;

  @override
  void initState(BuildContext context) {
    vsedlyaotdihaModel = createModel(context, () => VsedlyaotdihaModel());
  }

  @override
  void dispose() {
    vsedlyaotdihaModel.dispose();
  }
}
