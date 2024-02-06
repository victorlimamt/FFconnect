import '/flutter_flow/flutter_flow_util.dart';
import 'lista_estoque_widget.dart' show ListaEstoqueWidget;
import 'package:flutter/material.dart';

class ListaEstoqueModel extends FlutterFlowModel<ListaEstoqueWidget> {
  ///  Local state fields for this page.

  int? info = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
