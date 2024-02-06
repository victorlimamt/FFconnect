// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChartgastoslineYStruct extends FFFirebaseStruct {
  ChartgastoslineYStruct({
    List<double>? lineY,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _lineY = lineY,
        super(firestoreUtilData);

  // "LineY" field.
  List<double>? _lineY;
  List<double> get lineY => _lineY ?? const [];
  set lineY(List<double>? val) => _lineY = val;
  void updateLineY(Function(List<double>) updateFn) => updateFn(_lineY ??= []);
  bool hasLineY() => _lineY != null;

  static ChartgastoslineYStruct fromMap(Map<String, dynamic> data) =>
      ChartgastoslineYStruct(
        lineY: getDataList(data['LineY']),
      );

  static ChartgastoslineYStruct? maybeFromMap(dynamic data) => data is Map
      ? ChartgastoslineYStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'LineY': _lineY,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'LineY': serializeParam(
          _lineY,
          ParamType.double,
          true,
        ),
      }.withoutNulls;

  static ChartgastoslineYStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ChartgastoslineYStruct(
        lineY: deserializeParam<double>(
          data['LineY'],
          ParamType.double,
          true,
        ),
      );

  @override
  String toString() => 'ChartgastoslineYStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ChartgastoslineYStruct &&
        listEquality.equals(lineY, other.lineY);
  }

  @override
  int get hashCode => const ListEquality().hash([lineY]);
}

ChartgastoslineYStruct createChartgastoslineYStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChartgastoslineYStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChartgastoslineYStruct? updateChartgastoslineYStruct(
  ChartgastoslineYStruct? chartgastoslineY, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    chartgastoslineY
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChartgastoslineYStructData(
  Map<String, dynamic> firestoreData,
  ChartgastoslineYStruct? chartgastoslineY,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (chartgastoslineY == null) {
    return;
  }
  if (chartgastoslineY.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && chartgastoslineY.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final chartgastoslineYData =
      getChartgastoslineYFirestoreData(chartgastoslineY, forFieldValue);
  final nestedData =
      chartgastoslineYData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = chartgastoslineY.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChartgastoslineYFirestoreData(
  ChartgastoslineYStruct? chartgastoslineY, [
  bool forFieldValue = false,
]) {
  if (chartgastoslineY == null) {
    return {};
  }
  final firestoreData = mapToFirestore(chartgastoslineY.toMap());

  // Add any Firestore field values
  chartgastoslineY.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChartgastoslineYListFirestoreData(
  List<ChartgastoslineYStruct>? chartgastoslineYs,
) =>
    chartgastoslineYs
        ?.map((e) => getChartgastoslineYFirestoreData(e, true))
        .toList() ??
    [];
