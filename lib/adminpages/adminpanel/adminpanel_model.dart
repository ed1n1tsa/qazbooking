import '/all_components/adminpanelnabar/adminpanelnabar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'adminpanel_widget.dart' show AdminpanelWidget;
import 'package:flutter/material.dart';

class AdminpanelModel extends FlutterFlowModel<AdminpanelWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Model for adminpanelnabar component.
  late AdminpanelnabarModel adminpanelnabarModel;

  @override
  void initState(BuildContext context) {
    adminpanelnabarModel = createModel(context, () => AdminpanelnabarModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    adminpanelnabarModel.dispose();
  }
}
