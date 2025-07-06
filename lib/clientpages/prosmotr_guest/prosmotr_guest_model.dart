import '/clientpages/guest/detailsitem/detailsitem_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'prosmotr_guest_widget.dart' show ProsmotrGuestWidget;
import 'package:flutter/material.dart';

class ProsmotrGuestModel extends FlutterFlowModel<ProsmotrGuestWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for detailsitem component.
  late DetailsitemModel detailsitemModel;

  @override
  void initState(BuildContext context) {
    detailsitemModel = createModel(context, () => DetailsitemModel());
  }

  @override
  void dispose() {
    detailsitemModel.dispose();
  }
}
