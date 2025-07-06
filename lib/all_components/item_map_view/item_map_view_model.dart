import '/flutter_flow/flutter_flow_util.dart';
import 'item_map_view_widget.dart' show ItemMapViewWidget;
import 'package:flutter/material.dart';

class ItemMapViewModel extends FlutterFlowModel<ItemMapViewWidget> {
  ///  Local state fields for this component.

  bool mapView = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
