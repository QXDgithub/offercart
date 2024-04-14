import '/flutter_flow/flutter_flow_util.dart';
import 'food_widget.dart' show FoodWidget;
import 'package:flutter/material.dart';

class FoodModel extends FlutterFlowModel<FoodWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
