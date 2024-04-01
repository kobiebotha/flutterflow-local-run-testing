import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - newCustomAction] action in Button widget.
  List<dynamic>? customActionOutput;
  // Stores action output result for [Custom Action - custAct2] action in Button widget.
  String? custActOut;
  // Stores action output result for [Custom Action - isLoggedIn] action in Button widget.
  String? isLoggedIn;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
