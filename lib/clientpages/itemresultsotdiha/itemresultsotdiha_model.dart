import '/all_components/cardslider/cardslider_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'itemresultsotdiha_widget.dart' show ItemresultsotdihaWidget;
import 'package:flutter/material.dart';

class ItemresultsotdihaModel extends FlutterFlowModel<ItemresultsotdihaWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cardslider component.
  late CardsliderModel cardsliderModel;

  @override
  void initState(BuildContext context) {
    cardsliderModel = createModel(context, () => CardsliderModel());
  }

  @override
  void dispose() {
    cardsliderModel.dispose();
  }
}
