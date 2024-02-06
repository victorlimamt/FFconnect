import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'lojasparceiras_widget.dart' show LojasparceirasWidget;
import 'package:flutter/material.dart';

class LojasparceirasModel extends FlutterFlowModel<LojasparceirasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for navbar component.
  late NavbarModel navbarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navbarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
