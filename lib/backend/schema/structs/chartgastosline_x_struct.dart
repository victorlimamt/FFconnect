// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChartgastoslineXStruct extends FFFirebaseStruct {
  ChartgastoslineXStruct({
    List<int>? lineX,
    List<double>? lineY,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _lineX = lineX,
        _lineY = lineY,
        super(firestoreUtilData);

  // "LineX" field.
  List<int>? _lineX;
  List<int> get lineX => _lineX ?? const [];
  set lineX(List<int>? val) => _lineX = val;
  void updateLineX(Function(List<int>) updateFn) => updateFn(_lineX ??= []);
  bool hasLineX() => _lineX != null;

  // "LineY" field.
  List<double>? _lineY;
  List<double> get lineY => _lineY ?? const [];
  set lineY(List<double>? val) => _lineY = val;
  void updateLineY(Function(List<double>) updateFn) => updateFn(_lineY ??= []);
  bool hasLineY() => _lineY != null;

  static ChartgastoslineXStruct fromMap(Map<String, dynamic> data) =>
      ChartgastoslineXStruct(
        lineX: getDataList(data['LineX']),
        lineY: getDataList(data['LineY']),
      );

  static ChartgastoslineXStruct? maybeFromMap(dynamic data) => data is Map
      ? ChartgastoslineXStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'LineX': _lineX,
        'LineY': _lineY,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'LineX': serializeParam(
          _lineX,
          ParamType.int,
          true,
        ),
        'LineY': serializeParam(
          _lineY,
          ParamType.double,
          true,
        ),
      }.withoutNulls;

  static ChartgastoslineXStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ChartgastoslineXStruct(
        lineX: deserializeParam<int>(
          data['LineX'],
          ParamType.int,
          true,
        ),
        lineY: deserializeParam<double>(
          data['LineY'],
          ParamType.double,
          true,
        ),
      );

  @override
  String toString() => 'ChartgastoslineXStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ChartgastoslineXStruct &&
        listEquality.equals(lineX, other.lineX) &&
        listEquality.equals(lineY, other.lineY);
  }

  @override
  int get hashCode => const ListEquality().hash([lineX, lineY]);
}

ChartgastoslineXStruct createChartgastoslineXStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChartgastoslineXStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChartgastoslineXStruct? updateChartgastoslineXStruct(
  ChartgastoslineXStruct? chartgastoslineX, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    chartgastoslineX
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChartgastoslineXStructData(
  Map<String, dynamic> firestoreData,
  ChartgastoslineXStruct? chartgastoslineX,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (chartgastoslineX == null) {
    return;
  }
  if (chartgastoslineX.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && chartgastoslineX.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final chartgastoslineXData =
      getChartgastoslineXFirestoreData(chartgastoslineX, forFieldValue);
  final nestedData =
      chartgastoslineXData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = chartgastoslineX.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChartgastoslineXFirestoreData(
  ChartgastoslineXStruct? chartgastoslineX, [
  bool forFieldValue = false,
]) {
  if (chartgastoslineX == null) {
    return {};
  }
  final firestoreData = mapToFirestore(chartgastoslineX.toMap());

  // Add any Firestore field values
  chartgastoslineX.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChartgastoslineXListFirestoreData(
  List<ChartgastoslineXStruct>? chartgastoslineXs,
) =>
    chartgastoslineXs
        ?.map((e) => getChartgastoslineXFirestoreData(e, true))
        .toList() ??
    [];
