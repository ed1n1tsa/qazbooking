import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'checklist1_model.dart';
export 'checklist1_model.dart';

class Checklist1Widget extends StatefulWidget {
  const Checklist1Widget({super.key});

  @override
  State<Checklist1Widget> createState() => _Checklist1WidgetState();
}

class _Checklist1WidgetState extends State<Checklist1Widget> {
  late Checklist1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Checklist1Model());

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
