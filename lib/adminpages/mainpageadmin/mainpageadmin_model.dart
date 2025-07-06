import '/all_components/adminpanelnabar/adminpanelnabar_widget.dart';
import '/all_components/item_map_view/item_map_view_widget.dart';
import '/all_components/turi/turi_widget.dart';
import '/clientpages/guest/otdih/otdih_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'mainpageadmin_widget.dart' show MainpageadminWidget;
import 'package:flutter/material.dart';

class MainpageadminModel extends FlutterFlowModel<MainpageadminWidget> {
  ///  Local state fields for this page.

  bool? mapView;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Models for itemMapView dynamic component.
  late FlutterFlowDynamicModels<ItemMapViewModel> itemMapViewModels;
  // Model for Turi component.
  late TuriModel turiModel;
  // Model for otdih component.
  late OtdihModel otdihModel;
  // Model for adminpanelnabar component.
  late AdminpanelnabarModel adminpanelnabarModel;

  @override
  void initState(BuildContext context) {
    itemMapViewModels = FlutterFlowDynamicModels(() => ItemMapViewModel());
    turiModel = createModel(context, () => TuriModel());
    otdihModel = createModel(context, () => OtdihModel());
    adminpanelnabarModel = createModel(context, () => AdminpanelnabarModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    itemMapViewModels.dispose();
    turiModel.dispose();
    otdihModel.dispose();
    adminpanelnabarModel.dispose();
  }
}
