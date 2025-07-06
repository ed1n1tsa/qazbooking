import '/all_components/cardslider/cardslider_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'itemresultsotdiha_copy_widget.dart' show ItemresultsotdihaCopyWidget;
import 'package:flutter/material.dart';

class ItemresultsotdihaCopyModel
    extends FlutterFlowModel<ItemresultsotdihaCopyWidget> {
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
