// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TarefasStruct extends FFFirebaseStruct {
  TarefasStruct({
    String? tarefa,
    String? info,
    DateTime? datetime,
    String? idobra,
    String? status,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _tarefa = tarefa,
        _info = info,
        _datetime = datetime,
        _idobra = idobra,
        _status = status,
        super(firestoreUtilData);

  // "tarefa" field.
  String? _tarefa;
  String get tarefa => _tarefa ?? '';
  set tarefa(String? val) => _tarefa = val;
  bool hasTarefa() => _tarefa != null;

  // "info" field.
  String? _info;
  String get info => _info ?? '';
  set info(String? val) => _info = val;
  bool hasInfo() => _info != null;

  // "datetime" field.
  DateTime? _datetime;
  DateTime? get datetime => _datetime;
  set datetime(DateTime? val) => _datetime = val;
  bool hasDatetime() => _datetime != null;

  // "idobra" field.
  String? _idobra;
  String get idobra => _idobra ?? '';
  set idobra(String? val) => _idobra = val;
  bool hasIdobra() => _idobra != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;
  bool hasStatus() => _status != null;

  static TarefasStruct fromMap(Map<String, dynamic> data) => TarefasStruct(
        tarefa: data['tarefa'] as String?,
        info: data['info'] as String?,
        datetime: data['datetime'] as DateTime?,
        idobra: data['idobra'] as String?,
        status: data['status'] as String?,
      );

  static TarefasStruct? maybeFromMap(dynamic data) =>
      data is Map ? TarefasStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'tarefa': _tarefa,
        'info': _info,
        'datetime': _datetime,
        'idobra': _idobra,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tarefa': serializeParam(
          _tarefa,
          ParamType.String,
        ),
        'info': serializeParam(
          _info,
          ParamType.String,
        ),
        'datetime': serializeParam(
          _datetime,
          ParamType.DateTime,
        ),
        'idobra': serializeParam(
          _idobra,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
      }.withoutNulls;

  static TarefasStruct fromSerializableMap(Map<String, dynamic> data) =>
      TarefasStruct(
        tarefa: deserializeParam(
          data['tarefa'],
          ParamType.String,
          false,
        ),
        info: deserializeParam(
          data['info'],
          ParamType.String,
          false,
        ),
        datetime: deserializeParam(
          data['datetime'],
          ParamType.DateTime,
          false,
        ),
        idobra: deserializeParam(
          data['idobra'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TarefasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TarefasStruct &&
        tarefa == other.tarefa &&
        info == other.info &&
        datetime == other.datetime &&
        idobra == other.idobra &&
        status == other.status;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([tarefa, info, datetime, idobra, status]);
}

TarefasStruct createTarefasStruct({
  String? tarefa,
  String? info,
  DateTime? datetime,
  String? idobra,
  String? status,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TarefasStruct(
      tarefa: tarefa,
      info: info,
      datetime: datetime,
      idobra: idobra,
      status: status,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TarefasStruct? updateTarefasStruct(
  TarefasStruct? tarefas, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    tarefas
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTarefasStructData(
  Map<String, dynamic> firestoreData,
  TarefasStruct? tarefas,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (tarefas == null) {
    return;
  }
  if (tarefas.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && tarefas.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final tarefasData = getTarefasFirestoreData(tarefas, forFieldValue);
  final nestedData = tarefasData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = tarefas.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTarefasFirestoreData(
  TarefasStruct? tarefas, [
  bool forFieldValue = false,
]) {
  if (tarefas == null) {
    return {};
  }
  final firestoreData = mapToFirestore(tarefas.toMap());

  // Add any Firestore field values
  tarefas.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTarefasListFirestoreData(
  List<TarefasStruct>? tarefass,
) =>
    tarefass?.map((e) => getTarefasFirestoreData(e, true)).toList() ?? [];
