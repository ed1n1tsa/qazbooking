import '/clientpages/guest/knopkaturiadd/knopkaturiadd_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'turipodat_widget.dart' show TuripodatWidget;
import 'package:flutter/material.dart';

class TuripodatModel extends FlutterFlowModel<TuripodatWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for knopkaturiadd component.
  late KnopkaturiaddModel knopkaturiaddModel;

  @override
  void initState(BuildContext context) {
    knopkaturiaddModel = createModel(context, () => KnopkaturiaddModel());
  }

  @override
  void dispose() {
    knopkaturiaddModel.dispose();
  }
}
