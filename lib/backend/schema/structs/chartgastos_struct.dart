// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChartgastosStruct extends FFFirebaseStruct {
  ChartgastosStruct({
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

  static ChartgastosStruct fromMap(Map<String, dynamic> data) =>
      ChartgastosStruct(
        lineX: getDataList(data['LineX']),
        lineY: getDataList(data['LineY']),
      );

  static ChartgastosStruct? maybeFromMap(dynamic data) => data is Map
      ? ChartgastosStruct.fromMap(data.cast<String, dynamic>())
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

  static ChartgastosStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChartgastosStruct(
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
  String toString() => 'ChartgastosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ChartgastosStruct &&
        listEquality.equals(lineX, other.lineX) &&
        listEquality.equals(lineY, other.lineY);
  }

  @override
  int get hashCode => const ListEquality().hash([lineX, lineY]);
}

ChartgastosStruct createChartgastosStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChartgastosStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChartgastosStruct? updateChartgastosStruct(
  ChartgastosStruct? chartgastos, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    chartgastos
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChartgastosStructData(
  Map<String, dynamic> firestoreData,
  ChartgastosStruct? chartgastos,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (chartgastos == null) {
    return;
  }
  if (chartgastos.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && chartgastos.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final chartgastosData =
      getChartgastosFirestoreData(chartgastos, forFieldValue);
  final nestedData =
      chartgastosData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = chartgastos.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChartgastosFirestoreData(
  ChartgastosStruct? chartgastos, [
  bool forFieldValue = false,
]) {
  if (chartgastos == null) {
    return {};
  }
  final firestoreData = mapToFirestore(chartgastos.toMap());

  // Add any Firestore field values
  chartgastos.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChartgastosListFirestoreData(
  List<ChartgastosStruct>? chartgastoss,
) =>
    chartgastoss?.map((e) => getChartgastosFirestoreData(e, true)).toList() ??
    [];
