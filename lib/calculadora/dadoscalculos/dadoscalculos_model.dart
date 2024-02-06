import '/flutter_flow/flutter_flow_util.dart';
import 'dadoscalculos_widget.dart' show DadoscalculosWidget;
import 'package:flutter/material.dart';

class DadoscalculosModel extends FlutterFlowModel<DadoscalculosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for CountControllerproCIment widget.
  int? countControllerproCImentValue;
  // State field(s) for CountControllerproCal widget.
  int? countControllerproCalValue;
  // State field(s) for CountControllerproAreia widget.
  int? countControllerproAreiaValue;
  // State field(s) for CountControllerproBrita widget.
  int? countControllerproBritaValue;
  // State field(s) for TextFieldTIJLarg widget.
  FocusNode? textFieldTIJLargFocusNode;
  TextEditingController? textFieldTIJLargController;
  String? Function(BuildContext, String?)? textFieldTIJLargControllerValidator;
  String? _textFieldTIJLargControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextFieldAltura widget.
  FocusNode? textFieldAlturaFocusNode;
  TextEditingController? textFieldAlturaController;
  String? Function(BuildContext, String?)? textFieldAlturaControllerValidator;
  String? _textFieldAlturaControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextFieldTIJCompri widget.
  FocusNode? textFieldTIJCompriFocusNode;
  TextEditingController? textFieldTIJCompriController;
  String? Function(BuildContext, String?)?
      textFieldTIJCompriControllerValidator;
  String? _textFieldTIJCompriControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextFieldARGLarg widget.
  FocusNode? textFieldARGLargFocusNode;
  TextEditingController? textFieldARGLargController;
  String? Function(BuildContext, String?)? textFieldARGLargControllerValidator;
  String? _textFieldARGLargControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextFieldARGCompri widget.
  FocusNode? textFieldARGCompriFocusNode;
  TextEditingController? textFieldARGCompriController;
  String? Function(BuildContext, String?)?
      textFieldARGCompriControllerValidator;
  String? _textFieldARGCompriControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextFielESPARG widget.
  FocusNode? textFielESPARGFocusNode;
  TextEditingController? textFielESPARGController;
  String? Function(BuildContext, String?)? textFielESPARGControllerValidator;
  String? _textFielESPARGControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextFieldPilLarg widget.
  FocusNode? textFieldPilLargFocusNode;
  TextEditingController? textFieldPilLargController;
  String? Function(BuildContext, String?)? textFieldPilLargControllerValidator;
  String? _textFieldPilLargControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextFieldPilCompri widget.
  FocusNode? textFieldPilCompriFocusNode;
  TextEditingController? textFieldPilCompriController;
  String? Function(BuildContext, String?)?
      textFieldPilCompriControllerValidator;
  String? _textFieldPilCompriControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextFielaltPil widget.
  FocusNode? textFielaltPilFocusNode;
  TextEditingController? textFielaltPilController;
  String? Function(BuildContext, String?)? textFielaltPilControllerValidator;
  String? _textFielaltPilControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextFieldVigLarg widget.
  FocusNode? textFieldVigLargFocusNode;
  TextEditingController? textFieldVigLargController;
  String? Function(BuildContext, String?)? textFieldVigLargControllerValidator;
  String? _textFieldVigLargControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextFielaltviga widget.
  FocusNode? textFielaltvigaFocusNode;
  TextEditingController? textFielaltvigaController;
  String? Function(BuildContext, String?)? textFielaltvigaControllerValidator;
  String? _textFielaltvigaControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextFieldvigaCompri widget.
  FocusNode? textFieldvigaCompriFocusNode;
  TextEditingController? textFieldvigaCompriController;
  String? Function(BuildContext, String?)?
      textFieldvigaCompriControllerValidator;
  String? _textFieldvigaCompriControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextFieldARGJunt widget.
  FocusNode? textFieldARGJuntFocusNode;
  TextEditingController? textFieldARGJuntController;
  String? Function(BuildContext, String?)? textFieldARGJuntControllerValidator;
  String? _textFieldARGJuntControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextFieldquantidpil widget.
  FocusNode? textFieldquantidpilFocusNode;
  TextEditingController? textFieldquantidpilController;
  String? Function(BuildContext, String?)?
      textFieldquantidpilControllerValidator;
  String? _textFieldquantidpilControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextFieldTIJJunt widget.
  FocusNode? textFieldTIJJuntFocusNode;
  TextEditingController? textFieldTIJJuntController;
  String? Function(BuildContext, String?)? textFieldTIJJuntControllerValidator;
  String? _textFieldTIJJuntControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextFieldespessura widget.
  FocusNode? textFieldespessuraFocusNode;
  TextEditingController? textFieldespessuraController;
  String? Function(BuildContext, String?)?
      textFieldespessuraControllerValidator;
  String? _textFieldespessuraControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextFielarea widget.
  FocusNode? textFielareaFocusNode;
  TextEditingController? textFielareaController;
  String? Function(BuildContext, String?)? textFielareaControllerValidator;
  String? _textFielareaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    textFieldTIJLargControllerValidator = _textFieldTIJLargControllerValidator;
    textFieldAlturaControllerValidator = _textFieldAlturaControllerValidator;
    textFieldTIJCompriControllerValidator =
        _textFieldTIJCompriControllerValidator;
    textFieldARGLargControllerValidator = _textFieldARGLargControllerValidator;
    textFieldARGCompriControllerValidator =
        _textFieldARGCompriControllerValidator;
    textFielESPARGControllerValidator = _textFielESPARGControllerValidator;
    textFieldPilLargControllerValidator = _textFieldPilLargControllerValidator;
    textFieldPilCompriControllerValidator =
        _textFieldPilCompriControllerValidator;
    textFielaltPilControllerValidator = _textFielaltPilControllerValidator;
    textFieldVigLargControllerValidator = _textFieldVigLargControllerValidator;
    textFielaltvigaControllerValidator = _textFielaltvigaControllerValidator;
    textFieldvigaCompriControllerValidator =
        _textFieldvigaCompriControllerValidator;
    textFieldARGJuntControllerValidator = _textFieldARGJuntControllerValidator;
    textFieldquantidpilControllerValidator =
        _textFieldquantidpilControllerValidator;
    textFieldTIJJuntControllerValidator = _textFieldTIJJuntControllerValidator;
    textFieldespessuraControllerValidator =
        _textFieldespessuraControllerValidator;
    textFielareaControllerValidator = _textFielareaControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldTIJLargFocusNode?.dispose();
    textFieldTIJLargController?.dispose();

    textFieldAlturaFocusNode?.dispose();
    textFieldAlturaController?.dispose();

    textFieldTIJCompriFocusNode?.dispose();
    textFieldTIJCompriController?.dispose();

    textFieldARGLargFocusNode?.dispose();
    textFieldARGLargController?.dispose();

    textFieldARGCompriFocusNode?.dispose();
    textFieldARGCompriController?.dispose();

    textFielESPARGFocusNode?.dispose();
    textFielESPARGController?.dispose();

    textFieldPilLargFocusNode?.dispose();
    textFieldPilLargController?.dispose();

    textFieldPilCompriFocusNode?.dispose();
    textFieldPilCompriController?.dispose();

    textFielaltPilFocusNode?.dispose();
    textFielaltPilController?.dispose();

    textFieldVigLargFocusNode?.dispose();
    textFieldVigLargController?.dispose();

    textFielaltvigaFocusNode?.dispose();
    textFielaltvigaController?.dispose();

    textFieldvigaCompriFocusNode?.dispose();
    textFieldvigaCompriController?.dispose();

    textFieldARGJuntFocusNode?.dispose();
    textFieldARGJuntController?.dispose();

    textFieldquantidpilFocusNode?.dispose();
    textFieldquantidpilController?.dispose();

    textFieldTIJJuntFocusNode?.dispose();
    textFieldTIJJuntController?.dispose();

    textFieldespessuraFocusNode?.dispose();
    textFieldespessuraController?.dispose();

    textFielareaFocusNode?.dispose();
    textFielareaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
