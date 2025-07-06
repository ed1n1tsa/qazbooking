import '/all_components/item_map_view/item_map_view_widget.dart';
import '/all_components/turi/turi_widget.dart';
import '/clientpages/guest/otdih/otdih_widget.dart';
import '/clientpages/navbar_bot_client/navbar_bot_client_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'mainpageclient_widget.dart' show MainpageclientWidget;
import 'package:flutter/material.dart';

class MainpageclientModel extends FlutterFlowModel<MainpageclientWidget> {
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
  // Model for navbarBotClient component.
  late NavbarBotClientModel navbarBotClientModel;

  @override
  void initState(BuildContext context) {
    itemMapViewModels = FlutterFlowDynamicModels(() => ItemMapViewModel());
    turiModel = createModel(context, () => TuriModel());
    otdihModel = createModel(context, () => OtdihModel());
    navbarBotClientModel = createModel(context, () => NavbarBotClientModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    itemMapViewModels.dispose();
    turiModel.dispose();
    otdihModel.dispose();
    navbarBotClientModel.dispose();
  }
}
