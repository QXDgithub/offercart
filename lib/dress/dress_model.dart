import '/flutter_flow/flutter_flow_util.dart';
import 'dress_widget.dart' show DressWidget;
import 'package:flutter/material.dart';

class DressModel extends FlutterFlowModel<DressWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
