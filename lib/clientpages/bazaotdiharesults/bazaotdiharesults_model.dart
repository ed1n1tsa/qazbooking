import '/all_components/item_map_view/item_map_view_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'bazaotdiharesults_widget.dart' show BazaotdiharesultsWidget;
import 'package:flutter/material.dart';

class BazaotdiharesultsModel extends FlutterFlowModel<BazaotdiharesultsWidget> {
  ///  Local state fields for this page.

  bool? mapView;

  ///  State fields for stateful widgets in this page.

  // Models for itemMapView dynamic component.
  late FlutterFlowDynamicModels<ItemMapViewModel> itemMapViewModels;

  @override
  void initState(BuildContext context) {
    itemMapViewModels = FlutterFlowDynamicModels(() => ItemMapViewModel());
  }

  @override
  void dispose() {
    itemMapViewModels.dispose();
  }
}
