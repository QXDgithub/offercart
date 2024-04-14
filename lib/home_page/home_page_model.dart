import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  List<String> availableOptions = ['Sabrina', 'Curtis', 'Coralie', 'Norvil'];
  void addToAvailableOptions(String item) => availableOptions.add(item);
  void removeFromAvailableOptions(String item) => availableOptions.remove(item);
  void removeAtIndexFromAvailableOptions(int index) =>
      availableOptions.removeAt(index);
  void insertAtIndexInAvailableOptions(int index, String item) =>
      availableOptions.insert(index, item);
  void updateAvailableOptionsAtIndex(int index, Function(String) updateFn) =>
      availableOptions[index] = updateFn(availableOptions[index]);

  String optionSelected = 'Null';

  bool isWheelActive = false;

  bool selectionComplete = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  AudioPlayer? soundPlayer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
