import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'novo_item_widget.dart' show NovoItemWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class NovoItemModel extends FlutterFlowModel<NovoItemWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey1 = GlobalKey<FormState>();
  final formKey6 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  // State field(s) for TextFielitemEst widget.
  FocusNode? textFielitemEstFocusNode;
  TextEditingController? textFielitemEstController;
  String? Function(BuildContext, String?)? textFielitemEstControllerValidator;
  String? _textFielitemEstControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextFielQuantEst widget.
  FocusNode? textFielQuantEstFocusNode;
  TextEditingController? textFielQuantEstController;
  String? Function(BuildContext, String?)? textFielQuantEstControllerValidator;
  String? _textFielQuantEstControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for DropDownUniEst widget.
  String? dropDownUniEstValue;
  FormFieldController<String>? dropDownUniEstValueController;
  // State field(s) for TextFielQuantEdEst widget.
  FocusNode? textFielQuantEdEstFocusNode;
  TextEditingController? textFielQuantEdEstController;
  String? Function(BuildContext, String?)?
      textFielQuantEdEstControllerValidator;
  String? _textFielQuantEdEstControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for DropDownUniEdEst widget.
  String? dropDownUniEdEstValue;
  FormFieldController<String>? dropDownUniEdEstValueController;
  // State field(s) for TextFielitemCo widget.
  FocusNode? textFielitemCoFocusNode;
  TextEditingController? textFielitemCoController;
  String? Function(BuildContext, String?)? textFielitemCoControllerValidator;
  String? _textFielitemCoControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextFielusoCo widget.
  FocusNode? textFielusoCoFocusNode;
  TextEditingController? textFielusoCoController;
  String? Function(BuildContext, String?)? textFielusoCoControllerValidator;
  String? _textFielusoCoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextFielQuantCo widget.
  FocusNode? textFielQuantCoFocusNode;
  TextEditingController? textFielQuantCoController;
  String? Function(BuildContext, String?)? textFielQuantCoControllerValidator;
  String? _textFielQuantCoControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for DropDownUniCo widget.
  String? dropDownUniCoValue;
  FormFieldController<String>? dropDownUniCoValueController;
  // State field(s) for TextFieltarefa widget.
  FocusNode? textFieltarefaFocusNode;
  TextEditingController? textFieltarefaController;
  String? Function(BuildContext, String?)? textFieltarefaControllerValidator;
  String? _textFieltarefaControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextFielinfotarefa widget.
  FocusNode? textFielinfotarefaFocusNode;
  TextEditingController? textFielinfotarefaController;
  String? Function(BuildContext, String?)?
      textFielinfotarefaControllerValidator;
  String? _textFielinfotarefaControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextFieldatetimetarefa widget.
  FocusNode? textFieldatetimetarefaFocusNode;
  TextEditingController? textFieldatetimetarefaController;
  final textFieldatetimetarefaMask =
      MaskTextInputFormatter(mask: '##/##/#### ##:##');
  String? Function(BuildContext, String?)?
      textFieldatetimetarefaControllerValidator;
  String? _textFieldatetimetarefaControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    if (!RegExp(
            '(0[1-9]|[1-2][0-9]|3[0-1])\\/(0[1-9]|1[0-2])\\/\\d{4} (?:[0-1]?[0-9]|2[0-3]):[0-5][0-9]')
        .hasMatch(val)) {
      return 'Formato de data e hora inválido.';
    }
    return null;
  }

  // State field(s) for TextFielFornGast widget.
  FocusNode? textFielFornGastFocusNode;
  TextEditingController? textFielFornGastController;
  String? Function(BuildContext, String?)? textFielFornGastControllerValidator;
  String? _textFielFornGastControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório.';
    }

    return null;
  }

  // State field(s) for TextFielValorGast widget.
  FocusNode? textFielValorGastFocusNode;
  TextEditingController? textFielValorGastController;
  String? Function(BuildContext, String?)? textFielValorGastControllerValidator;
  String? _textFielValorGastControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório.';
    }

    return null;
  }

  // State field(s) for ChoiceChipsTipoGas widget.
  String? choiceChipsTipoGasValue;
  FormFieldController<List<String>>? choiceChipsTipoGasValueController;
  // State field(s) for TextFielTestgast widget.
  FocusNode? textFielTestgastFocusNode;
  TextEditingController? textFielTestgastController;
  String? Function(BuildContext, String?)? textFielTestgastControllerValidator;
  // State field(s) for TextFieldatetimegasto widget.
  FocusNode? textFieldatetimegastoFocusNode;
  TextEditingController? textFieldatetimegastoController;
  final textFieldatetimegastoMask =
      MaskTextInputFormatter(mask: '##/##/#### ##:##');
  String? Function(BuildContext, String?)?
      textFieldatetimegastoControllerValidator;
  String? _textFieldatetimegastoControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório.';
    }

    if (!RegExp(
            '(0[1-9]|[1-2][0-9]|3[0-1])\\/(0[1-9]|1[0-2])\\/\\d{4} (?:[0-1]?[0-9]|2[0-3]):[0-5][0-9]')
        .hasMatch(val)) {
      return 'Formato de data e hora inválido.';
    }
    return null;
  }

  // State field(s) for TextFielObra widget.
  FocusNode? textFielObraFocusNode;
  TextEditingController? textFielObraController;
  String? Function(BuildContext, String?)? textFielObraControllerValidator;
  String? _textFielObraControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextFielEndobra widget.
  FocusNode? textFielEndobraFocusNode;
  TextEditingController? textFielEndobraController;
  String? Function(BuildContext, String?)? textFielEndobraControllerValidator;
  // State field(s) for TextFielContobra widget.
  FocusNode? textFielContobraFocusNode;
  TextEditingController? textFielContobraController;
  final textFielContobraMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? textFielContobraControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    textFielitemEstControllerValidator = _textFielitemEstControllerValidator;
    textFielQuantEstControllerValidator = _textFielQuantEstControllerValidator;
    textFielQuantEdEstControllerValidator =
        _textFielQuantEdEstControllerValidator;
    textFielitemCoControllerValidator = _textFielitemCoControllerValidator;
    textFielusoCoControllerValidator = _textFielusoCoControllerValidator;
    textFielQuantCoControllerValidator = _textFielQuantCoControllerValidator;
    textFieltarefaControllerValidator = _textFieltarefaControllerValidator;
    textFielinfotarefaControllerValidator =
        _textFielinfotarefaControllerValidator;
    textFieldatetimetarefaControllerValidator =
        _textFieldatetimetarefaControllerValidator;
    textFielFornGastControllerValidator = _textFielFornGastControllerValidator;
    textFielValorGastControllerValidator =
        _textFielValorGastControllerValidator;
    textFieldatetimegastoControllerValidator =
        _textFieldatetimegastoControllerValidator;
    textFielObraControllerValidator = _textFielObraControllerValidator;
  }

  @override
  void dispose() {
    textFielitemEstFocusNode?.dispose();
    textFielitemEstController?.dispose();

    textFielQuantEstFocusNode?.dispose();
    textFielQuantEstController?.dispose();

    textFielQuantEdEstFocusNode?.dispose();
    textFielQuantEdEstController?.dispose();

    textFielitemCoFocusNode?.dispose();
    textFielitemCoController?.dispose();

    textFielusoCoFocusNode?.dispose();
    textFielusoCoController?.dispose();

    textFielQuantCoFocusNode?.dispose();
    textFielQuantCoController?.dispose();

    textFieltarefaFocusNode?.dispose();
    textFieltarefaController?.dispose();

    textFielinfotarefaFocusNode?.dispose();
    textFielinfotarefaController?.dispose();

    textFieldatetimetarefaFocusNode?.dispose();
    textFieldatetimetarefaController?.dispose();

    textFielFornGastFocusNode?.dispose();
    textFielFornGastController?.dispose();

    textFielValorGastFocusNode?.dispose();
    textFielValorGastController?.dispose();

    textFielTestgastFocusNode?.dispose();
    textFielTestgastController?.dispose();

    textFieldatetimegastoFocusNode?.dispose();
    textFieldatetimegastoController?.dispose();

    textFielObraFocusNode?.dispose();
    textFielObraController?.dispose();

    textFielEndobraFocusNode?.dispose();
    textFielEndobraController?.dispose();

    textFielContobraFocusNode?.dispose();
    textFielContobraController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
