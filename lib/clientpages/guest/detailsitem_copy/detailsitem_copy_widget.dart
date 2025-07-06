import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'detailsitem_copy_model.dart';
export 'detailsitem_copy_model.dart';

class DetailsitemCopyWidget extends StatefulWidget {
  const DetailsitemCopyWidget({super.key});

  @override
  State<DetailsitemCopyWidget> createState() => _DetailsitemCopyWidgetState();
}

class _DetailsitemCopyWidgetState extends State<DetailsitemCopyWidget> {
  late DetailsitemCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetailsitemCopyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
