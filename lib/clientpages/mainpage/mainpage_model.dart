import '/all_components/item_map_view/item_map_view_widget.dart';
import '/all_components/turi/turi_widget.dart';
import '/clientpages/guest/otdih/otdih_widget.dart';
import '/clientpages/navbar_bot/navbar_bot_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'mainpage_widget.dart' show MainpageWidget;
import 'package:flutter/material.dart';

class MainpageModel extends FlutterFlowModel<MainpageWidget> {
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
  // Model for navbarBot component.
  late NavbarBotModel navbarBotModel;

  @override
  void initState(BuildContext context) {
    itemMapViewModels = FlutterFlowDynamicModels(() => ItemMapViewModel());
    turiModel = createModel(context, () => TuriModel());
    otdihModel = createModel(context, () => OtdihModel());
    navbarBotModel = createModel(context, () => NavbarBotModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    itemMapViewModels.dispose();
    turiModel.dispose();
    otdihModel.dispose();
    navbarBotModel.dispose();
  }
}
