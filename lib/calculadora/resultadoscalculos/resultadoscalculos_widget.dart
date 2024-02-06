import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'resultadoscalculos_model.dart';
export 'resultadoscalculos_model.dart';

class ResultadoscalculosWidget extends StatefulWidget {
  const ResultadoscalculosWidget({
    super.key,
    required this.dadoscalc,
    required this.itenscalculados,
    this.propcimento,
    this.propareia,
    this.propbrita,
    this.propcal,
    this.largTij,
    this.altTij,
    this.compTij,
    this.largpeca,
    this.compPeca,
    this.espessPeca,
    this.compPil,
    this.largPil,
    this.altPil,
    this.largVig,
    this.altVig,
    this.compVig,
    this.largJuntaArg,
    this.quantPilar,
    this.largJuntaTij,
    this.espessura,
    this.area,
  });

  final List<String>? dadoscalc;
  final List<String>? itenscalculados;
  final int? propcimento;
  final int? propareia;
  final int? propbrita;
  final int? propcal;
  final double? largTij;
  final double? altTij;
  final double? compTij;
  final double? largpeca;
  final double? compPeca;
  final double? espessPeca;
  final double? compPil;
  final double? largPil;
  final double? altPil;
  final double? largVig;
  final double? altVig;
  final double? compVig;
  final double? largJuntaArg;
  final double? quantPilar;
  final double? largJuntaTij;
  final double? espessura;
  final double? area;

  @override
  State<ResultadoscalculosWidget> createState() =>
      _ResultadoscalculosWidgetState();
}

class _ResultadoscalculosWidgetState extends State<ResultadoscalculosWidget> {
  late ResultadoscalculosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResultadoscalculosModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF13293D),
        body: Stack(
          children: [
            Material(
              color: Colors.transparent,
              elevation: 5.0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                  topLeft: Radius.circular(0.0),
                  topRight: Radius.circular(0.0),
                ),
              ),
              child: Container(
                width: double.infinity,
                height: 200.0,
                decoration: BoxDecoration(
                  color: const Color(0xFF13293D),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.network(
                      FFAppState()
                          .itenscalcul
                          .where((e) => e.retornoid == FFAppState().calculadora)
                          .toList()
                          .first
                          .image,
                    ).image,
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(0.0),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 60.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).info,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x520E151B),
                              offset: Offset(0.0, 2.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(50.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 8.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          icon: Icon(
                            Icons.arrow_back_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 20.0,
                          ),
                          onPressed: () async {
                            context.pop();
                            Navigator.pop(context);
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          child: Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: const Color(0x2714181B),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: 2.0,
                                  sigmaY: 2.0,
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, -1.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 4.0, 0.0, 0.0),
                                          child: Text(
                                            FFAppState()
                                                .itenscalcul
                                                .where((e) =>
                                                    e.retornoid ==
                                                    FFAppState().calculadora)
                                                .toList()
                                                .first
                                                .name,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Lato',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, -1.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 4.0, 0.0, 0.0),
                                          child: Text(
                                            FFAppState()
                                                .itenscalcul
                                                .where((e) =>
                                                    e.retornoid ==
                                                    FFAppState().calculadora)
                                                .toList()
                                                .first
                                                .descricao,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Lato',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                  fontSize: 11.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/Logomarca_CONCRETIZZE_(c).png',
                            width: 50.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 215.0, 16.0, 0.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (widget.itenscalculados?.contains('Cimento') == true)
                      Material(
                        color: Colors.transparent,
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Container(
                          height: 140.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFF0F2D4A),
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).info,
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 8.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.asset(
                                    'assets/images/cimento_50.png',
                                    height: 70.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Quantidade de cimento',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          () {
                                            if (FFAppState().calculadora ==
                                                'tijolos') {
                                              return formatNumber(
                                                (((widget.largJuntaTij!) *
                                                            (widget.largTij!) *
                                                            ((2 *
                                                                    (widget
                                                                        .altTij!)) +
                                                                (widget
                                                                    .compTij!)) *
                                                            (1.07 /
                                                                (((widget.altTij!) +
                                                                        1.5) *
                                                                    ((widget.compTij!) +
                                                                        1.5) /
                                                                    10000)) *
                                                            (widget.area!) /
                                                            1000000 *
                                                            1.05) /
                                                        widget.propareia!
                                                            .toDouble()) *
                                                    1400 /
                                                    50,
                                                formatType: FormatType.custom,
                                                format: '0.#',
                                                locale: 'br_BR',
                                              );
                                            } else if (FFAppState()
                                                    .calculadora ==
                                                'vigas') {
                                              return formatNumber(
                                                (((widget.compVig!) *
                                                            (widget.largVig!) *
                                                            (widget.altVig!) *
                                                            0.7 /
                                                            10000) /
                                                        widget.propbrita!
                                                            .toDouble()) *
                                                    1400 /
                                                    50,
                                                formatType: FormatType.custom,
                                                format: '0.#',
                                                locale: 'br_BR',
                                              );
                                            } else if (FFAppState()
                                                    .calculadora ==
                                                'laje') {
                                              return formatNumber(
                                                (((widget.espessura!) *
                                                            (widget.area!) *
                                                            1.05 /
                                                            100 *
                                                            0.7) /
                                                        widget.propbrita!
                                                            .toDouble()) *
                                                    1400 /
                                                    50,
                                                formatType: FormatType.custom,
                                                format: '0.#',
                                                locale: 'br_BR',
                                              );
                                            } else if (FFAppState()
                                                    .calculadora ==
                                                'piso') {
                                              return formatNumber(
                                                (((widget.espessura!) *
                                                            (widget.area!) *
                                                            1.05 /
                                                            100 *
                                                            0.7) /
                                                        widget.propbrita!
                                                            .toDouble()) *
                                                    1400 /
                                                    50,
                                                formatType: FormatType.custom,
                                                format: '0.#',
                                                locale: 'br_BR',
                                              );
                                            } else if (FFAppState()
                                                    .calculadora ==
                                                'emboco') {
                                              return formatNumber(
                                                (((widget.area!) *
                                                            (widget
                                                                .espessura!) *
                                                            1.05 /
                                                            100) /
                                                        widget.propareia!
                                                            .toDouble()) *
                                                    1400 /
                                                    50,
                                                formatType: FormatType.custom,
                                                format: '0.#',
                                                locale: 'br_BR',
                                              );
                                            } else if (FFAppState()
                                                    .calculadora ==
                                                'chapisco') {
                                              return formatNumber(
                                                (((widget.area!) *
                                                            (widget
                                                                .espessura!) *
                                                            1.05 /
                                                            1000) /
                                                        widget.propareia!
                                                            .toDouble()) *
                                                    1400 /
                                                    50,
                                                formatType: FormatType.custom,
                                                format: '0.#',
                                                locale: 'br_BR',
                                              );
                                            } else if (FFAppState()
                                                    .calculadora ==
                                                'contrapiso') {
                                              return formatNumber(
                                                (((widget.area!) *
                                                            (widget
                                                                .espessura!) *
                                                            1.05 /
                                                            100) /
                                                        widget.propareia!
                                                            .toDouble()) *
                                                    1400 /
                                                    50,
                                                formatType: FormatType.custom,
                                                format: '0.#',
                                                locale: 'br_BR',
                                              );
                                            } else if (FFAppState()
                                                    .calculadora ==
                                                'pilarisolado') {
                                              return formatNumber(
                                                (((widget.compPil!) *
                                                            (widget.largPil!) *
                                                            (widget.altPil!) *
                                                            (0.7 / 10000) *
                                                            (widget
                                                                .quantPilar!)) /
                                                        widget.propbrita!
                                                            .toDouble()) *
                                                    1400 /
                                                    50,
                                                formatType: FormatType.custom,
                                                format: '0.#',
                                                locale: 'br_BR',
                                              );
                                            } else if (FFAppState()
                                                    .calculadora ==
                                                'pilarembutido') {
                                              return formatNumber(
                                                (((widget.compPil!) *
                                                            (widget.largPil!) *
                                                            (widget.altPil!) *
                                                            (0.7 / 10000) *
                                                            (widget
                                                                .quantPilar!) *
                                                            1.2) /
                                                        widget.propbrita!
                                                            .toDouble()) *
                                                    1400 /
                                                    50,
                                                formatType: FormatType.custom,
                                                format: '0.#',
                                                locale: 'br_BR',
                                              );
                                            } else {
                                              return 'Falta dados';
                                            }
                                          }(),
                                          'Falta dados',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              fontSize: 26.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Text(
                                        'Sacos de 50kg',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color: const Color(0xFFCBCED0),
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ].divide(const SizedBox(height: 10.0)),
                                  ),
                                ),
                                if (_model.opcional == 2)
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.shopping_cart_rounded,
                                        color: Color(0xFFCBCED0),
                                        size: 24.0,
                                      ),
                                      const Icon(
                                        Icons.add_circle,
                                        color: Color(0xFFCBCED0),
                                        size: 24.0,
                                      ),
                                    ].divide(const SizedBox(height: 10.0)),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    if (widget.itenscalculados?.contains('Cal') == true)
                      Material(
                        color: Colors.transparent,
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Container(
                          height: 140.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFF0F2D4A),
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).info,
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 8.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: Image.asset(
                                      'assets/images/cal_(1).png',
                                      height: 70.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Quantidade de cal',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          () {
                                            if (FFAppState().calculadora ==
                                                'tijolos') {
                                              return formatNumber(
                                                ((((widget.largJuntaTij!) *
                                                                (widget
                                                                    .largTij!) *
                                                                ((2 *
                                                                        (widget
                                                                            .altTij!)) +
                                                                    (widget
                                                                        .compTij!)) *
                                                                (1.07 /
                                                                    (((widget.altTij!) +
                                                                            1.5) *
                                                                        ((widget.compTij!) +
                                                                            1.5) /
                                                                        10000)) *
                                                                (widget.area!) /
                                                                1000000 *
                                                                1.05) /
                                                            widget.propareia!
                                                                .toDouble()) *
                                                        (widget.propcal!
                                                                .toDouble() *
                                                            670)) /
                                                    20,
                                                formatType: FormatType.custom,
                                                format: '0.#',
                                                locale: 'br_BR',
                                              );
                                            } else if (FFAppState()
                                                    .calculadora ==
                                                'emboco') {
                                              return formatNumber(
                                                ((((widget.area!) *
                                                                (widget
                                                                    .espessura!) *
                                                                1.05 /
                                                                100) /
                                                            widget.propareia!
                                                                .toDouble()) *
                                                        (widget.propcal!
                                                                .toDouble() *
                                                            670)) /
                                                    20,
                                                formatType: FormatType.custom,
                                                format: '0.#',
                                                locale: 'br_BR',
                                              );
                                            } else {
                                              return 'Falta dados';
                                            }
                                          }(),
                                          'Falta dados',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              fontSize: 26.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Text(
                                        'Sacos de 20kg',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color: const Color(0xFFCBCED0),
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ].divide(const SizedBox(height: 10.0)),
                                  ),
                                ),
                                if (_model.opcional == 2)
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.shopping_cart_rounded,
                                        color: Color(0xFFCBCED0),
                                        size: 24.0,
                                      ),
                                      const Icon(
                                        Icons.add_circle,
                                        color: Color(0xFFCBCED0),
                                        size: 24.0,
                                      ),
                                    ].divide(const SizedBox(height: 10.0)),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    if (widget.itenscalculados?.contains('Areia') == true)
                      Material(
                        color: Colors.transparent,
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Container(
                          height: 140.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFF0F2D4A),
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).info,
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 8.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: Image.asset(
                                      'assets/images/png-clipart-sand-sand-removebg-preview.png',
                                      height: 70.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Quantidade de areia',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          () {
                                            if (FFAppState().calculadora ==
                                                'tijolos') {
                                              return formatNumber(
                                                (widget.largJuntaTij!) *
                                                    (widget.largTij!) *
                                                    ((2 * (widget.altTij!)) +
                                                        (widget.compTij!)) *
                                                    (1.07 /
                                                        (((widget.altTij!) +
                                                                1.5) *
                                                            ((widget.compTij!) +
                                                                1.5) /
                                                            10000)) *
                                                    (widget.area!) /
                                                    1000000 *
                                                    1.05,
                                                formatType: FormatType.custom,
                                                format: '0.##',
                                                locale: 'br_BR',
                                              );
                                            } else if (FFAppState()
                                                    .calculadora ==
                                                'vigas') {
                                              return formatNumber(
                                                (((widget.compVig!) *
                                                            (widget.largVig!) *
                                                            (widget.altVig!) *
                                                            0.7 /
                                                            10000) /
                                                        widget.propbrita!
                                                            .toDouble()) *
                                                    widget.propareia!
                                                        .toDouble(),
                                                formatType: FormatType.custom,
                                                format: '0.##',
                                                locale: 'br_BR',
                                              );
                                            } else if (FFAppState()
                                                    .calculadora ==
                                                'laje') {
                                              return formatNumber(
                                                (((widget.espessura!) *
                                                            (widget.area!) *
                                                            1.05 /
                                                            100 *
                                                            0.7) /
                                                        widget.propbrita!
                                                            .toDouble()) *
                                                    widget.propareia!
                                                        .toDouble(),
                                                formatType: FormatType.custom,
                                                format: '0.##',
                                                locale: 'br_BR',
                                              );
                                            } else if (FFAppState()
                                                    .calculadora ==
                                                'piso') {
                                              return formatNumber(
                                                (((widget.espessura!) *
                                                            (widget.area!) *
                                                            1.05 /
                                                            100 *
                                                            0.7) /
                                                        widget.propbrita!
                                                            .toDouble()) *
                                                    widget.propareia!
                                                        .toDouble(),
                                                formatType: FormatType.custom,
                                                format: '0.##',
                                                locale: 'br_BR',
                                              );
                                            } else if (FFAppState()
                                                    .calculadora ==
                                                'emboco') {
                                              return formatNumber(
                                                (widget.area!) *
                                                    (widget.espessura!) *
                                                    1.05 /
                                                    100,
                                                formatType: FormatType.custom,
                                                format: '0.##',
                                                locale: 'br_BR',
                                              );
                                            } else if (FFAppState()
                                                    .calculadora ==
                                                'chapisco') {
                                              return formatNumber(
                                                (widget.area!) *
                                                    (widget.espessura!) *
                                                    1.05 /
                                                    1000,
                                                formatType: FormatType.custom,
                                                format: '0.##',
                                                locale: 'br_BR',
                                              );
                                            } else if (FFAppState()
                                                    .calculadora ==
                                                'contrapiso') {
                                              return formatNumber(
                                                (widget.area!) *
                                                    (widget.espessura!) *
                                                    1.05 /
                                                    100,
                                                formatType: FormatType.custom,
                                                format: '0.##',
                                                locale: 'br_BR',
                                              );
                                            } else if (FFAppState()
                                                    .calculadora ==
                                                'pilarisolado') {
                                              return formatNumber(
                                                (((widget.compPil!) *
                                                            (widget.largPil!) *
                                                            (widget.altPil!) *
                                                            (0.7 / 10000) *
                                                            (widget
                                                                .quantPilar!)) /
                                                        widget.propbrita!
                                                            .toDouble()) *
                                                    widget.propareia!
                                                        .toDouble(),
                                                formatType: FormatType.custom,
                                                format: '0.##',
                                                locale: 'br_BR',
                                              );
                                            } else if (FFAppState()
                                                    .calculadora ==
                                                'pilarembutido') {
                                              return formatNumber(
                                                (((widget.compPil!) *
                                                            (widget.largPil!) *
                                                            (widget.altPil!) *
                                                            (0.7 / 10000) *
                                                            (widget
                                                                .quantPilar!) *
                                                            1.2) /
                                                        widget.propbrita!
                                                            .toDouble()) *
                                                    widget.propareia!
                                                        .toDouble(),
                                                formatType: FormatType.custom,
                                                format: '0.##',
                                                locale: 'br_BR',
                                              );
                                            } else {
                                              return 'Falta dados';
                                            }
                                          }(),
                                          'Falta dados',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              fontSize: 26.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Text(
                                        'Metros cúbicos (m³)',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color: const Color(0xFFCBCED0),
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ].divide(const SizedBox(height: 10.0)),
                                  ),
                                ),
                                if (_model.opcional == 2)
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.shopping_cart_rounded,
                                        color: Color(0xFFCBCED0),
                                        size: 24.0,
                                      ),
                                      const Icon(
                                        Icons.add_circle,
                                        color: Color(0xFFCBCED0),
                                        size: 24.0,
                                      ),
                                    ].divide(const SizedBox(height: 10.0)),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    if (widget.itenscalculados?.contains('Brita') == true)
                      Material(
                        color: Colors.transparent,
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Container(
                          height: 140.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFF0F2D4A),
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).info,
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 8.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.asset(
                                    'assets/images/brita_img.png',
                                    height: 50.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Quantidade de brita',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          () {
                                            if (FFAppState().calculadora ==
                                                'vigas') {
                                              return formatNumber(
                                                (widget.compVig!) *
                                                    (widget.largVig!) *
                                                    (widget.altVig!) *
                                                    0.7 /
                                                    10000,
                                                formatType: FormatType.custom,
                                                format: '0.##',
                                                locale: 'br_BR',
                                              );
                                            } else if (FFAppState()
                                                    .calculadora ==
                                                'laje') {
                                              return formatNumber(
                                                (widget.espessura!) *
                                                    (widget.area!) *
                                                    1.05 /
                                                    100 *
                                                    0.7,
                                                formatType: FormatType.custom,
                                                format: '0.##',
                                                locale: 'br_BR',
                                              );
                                            } else if (FFAppState()
                                                    .calculadora ==
                                                'piso') {
                                              return formatNumber(
                                                (widget.espessura!) *
                                                    (widget.area!) *
                                                    1.05 /
                                                    100 *
                                                    0.7,
                                                formatType: FormatType.custom,
                                                format: '0.##',
                                                locale: 'br_BR',
                                              );
                                            } else if (FFAppState()
                                                    .calculadora ==
                                                'pilarisolado') {
                                              return formatNumber(
                                                (widget.compPil!) *
                                                    (widget.largPil!) *
                                                    (widget.altPil!) *
                                                    (0.7 / 10000) *
                                                    (widget.quantPilar!),
                                                formatType: FormatType.custom,
                                                format: '0.##',
                                                locale: 'br_BR',
                                              );
                                            } else if (FFAppState()
                                                    .calculadora ==
                                                'pilarembutido') {
                                              return formatNumber(
                                                (widget.compPil!) *
                                                    (widget.largPil!) *
                                                    (widget.altPil!) *
                                                    (0.7 / 10000) *
                                                    (widget.quantPilar!) *
                                                    1.2,
                                                formatType: FormatType.custom,
                                                format: '0.##',
                                                locale: 'br_BR',
                                              );
                                            } else {
                                              return 'Falta dados';
                                            }
                                          }(),
                                          'Falta dados',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              fontSize: 26.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Text(
                                        'Metros cúbicos (m³)',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color: const Color(0xFFCBCED0),
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ].divide(const SizedBox(height: 10.0)),
                                  ),
                                ),
                                if (_model.opcional == 2)
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.shopping_cart_rounded,
                                        color: Color(0xFFCBCED0),
                                        size: 24.0,
                                      ),
                                      const Icon(
                                        Icons.add_circle,
                                        color: Color(0xFFCBCED0),
                                        size: 24.0,
                                      ),
                                    ].divide(const SizedBox(height: 10.0)),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    if (widget.itenscalculados?.contains('Tijolos') == true)
                      Material(
                        color: Colors.transparent,
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Container(
                          height: 140.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFF0F2D4A),
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).info,
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 8.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: Image.asset(
                                      'assets/images/png-transparent-brick-ladrillo-hueco-enva-wall-brick-stone-quality-material-removebg-preview.png',
                                      height: 70.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Quantidade de tijolos',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          FFAppState().calculadora == 'tijolos'
                                              ? formatNumber(
                                                  1.07 /
                                                      (((widget.altTij!) +
                                                              1.5) *
                                                          ((widget.compTij!) +
                                                              1.5) /
                                                          10000) *
                                                      (widget.area!),
                                                  formatType: FormatType.custom,
                                                  format: '',
                                                  locale: '',
                                                )
                                              : 'Falta dados',
                                          'Falta dados',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              fontSize: 26.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Text(
                                        'Unidades',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color: const Color(0xFFCBCED0),
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ].divide(const SizedBox(height: 10.0)),
                                  ),
                                ),
                                if (_model.opcional == 2)
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.shopping_cart_rounded,
                                        color: Color(0xFFCBCED0),
                                        size: 24.0,
                                      ),
                                      const Icon(
                                        Icons.add_circle,
                                        color: Color(0xFFCBCED0),
                                        size: 24.0,
                                      ),
                                    ].divide(const SizedBox(height: 10.0)),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    if (widget.itenscalculados?.contains('Argamassa') == true)
                      Material(
                        color: Colors.transparent,
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Container(
                          height: 140.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFF0F2D4A),
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).info,
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 8.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: Image.asset(
                                      'assets/images/Argamassa.png',
                                      height: 70.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Quantidade de argamassa',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          FFAppState().calculadora ==
                                                  'argamassa'
                                              ? formatNumber(
                                                  (widget.area!) / 4,
                                                  formatType: FormatType.custom,
                                                  format: '0.#',
                                                  locale: 'br_BR',
                                                )
                                              : 'Falta dados',
                                          'Falta dados',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              fontSize: 26.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Text(
                                        'Sacos 20kg',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color: const Color(0xFFCBCED0),
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ].divide(const SizedBox(height: 10.0)),
                                  ),
                                ),
                                if (_model.opcional == 2)
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.shopping_cart_rounded,
                                        color: Color(0xFFCBCED0),
                                        size: 24.0,
                                      ),
                                      const Icon(
                                        Icons.add_circle,
                                        color: Color(0xFFCBCED0),
                                        size: 24.0,
                                      ),
                                    ].divide(const SizedBox(height: 10.0)),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    if (widget.itenscalculados?.contains('Rejunte') == true)
                      Material(
                        color: Colors.transparent,
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Container(
                          height: 140.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFF0F2D4A),
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).info,
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 8.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: Image.asset(
                                      'assets/images/Rejunte_1-removebg-preview_(1).png',
                                      height: 70.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Quantidade de rejunte',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          FFAppState().calculadora ==
                                                  'argamassa'
                                              ? formatNumber(
                                                  (widget.area!) *
                                                      10 *
                                                      1.05 *
                                                      (((widget.compPeca!) +
                                                              (widget
                                                                  .largpeca!)) *
                                                          ((widget.largJuntaArg!) /
                                                              10) *
                                                          ((widget.espessPeca!) /
                                                              10) *
                                                          1.75) /
                                                      ((widget.compPeca!) *
                                                          (widget.largpeca!)),
                                                  formatType: FormatType.custom,
                                                  format: '0.#',
                                                  locale: 'br_BR',
                                                )
                                              : 'Falta dados',
                                          'Falta dados',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              fontSize: 26.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Text(
                                        'Sacos 1kg',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color: const Color(0xFFCBCED0),
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ].divide(const SizedBox(height: 10.0)),
                                  ),
                                ),
                                if (_model.opcional == 2)
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.shopping_cart_rounded,
                                        color: Color(0xFFCBCED0),
                                        size: 24.0,
                                      ),
                                      const Icon(
                                        Icons.add_circle,
                                        color: Color(0xFFCBCED0),
                                        size: 24.0,
                                      ),
                                    ].divide(const SizedBox(height: 10.0)),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  ]
                      .divide(const SizedBox(height: 12.0))
                      .addToEnd(const SizedBox(height: 40.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
