// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ComprasStruct extends FFFirebaseStruct {
  ComprasStruct({
    String? item,
    double? quantidade,
    String? uso,
    String? unidade,
    String? idobra,
    bool? comprado,
    DateTime? datacompra,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _item = item,
        _quantidade = quantidade,
        _uso = uso,
        _unidade = unidade,
        _idobra = idobra,
        _comprado = comprado,
        _datacompra = datacompra,
        super(firestoreUtilData);

  // "item" field.
  String? _item;
  String get item => _item ?? '';
  set item(String? val) => _item = val;
  bool hasItem() => _item != null;

  // "quantidade" field.
  double? _quantidade;
  double get quantidade => _quantidade ?? 0.0;
  set quantidade(double? val) => _quantidade = val;
  void incrementQuantidade(double amount) => _quantidade = quantidade + amount;
  bool hasQuantidade() => _quantidade != null;

  // "uso" field.
  String? _uso;
  String get uso => _uso ?? '';
  set uso(String? val) => _uso = val;
  bool hasUso() => _uso != null;

  // "unidade" field.
  String? _unidade;
  String get unidade => _unidade ?? '';
  set unidade(String? val) => _unidade = val;
  bool hasUnidade() => _unidade != null;

  // "idobra" field.
  String? _idobra;
  String get idobra => _idobra ?? '';
  set idobra(String? val) => _idobra = val;
  bool hasIdobra() => _idobra != null;

  // "Comprado" field.
  bool? _comprado;
  bool get comprado => _comprado ?? false;
  set comprado(bool? val) => _comprado = val;
  bool hasComprado() => _comprado != null;

  // "datacompra" field.
  DateTime? _datacompra;
  DateTime? get datacompra => _datacompra;
  set datacompra(DateTime? val) => _datacompra = val;
  bool hasDatacompra() => _datacompra != null;

  static ComprasStruct fromMap(Map<String, dynamic> data) => ComprasStruct(
        item: data['item'] as String?,
        quantidade: castToType<double>(data['quantidade']),
        uso: data['uso'] as String?,
        unidade: data['unidade'] as String?,
        idobra: data['idobra'] as String?,
        comprado: data['Comprado'] as bool?,
        datacompra: data['datacompra'] as DateTime?,
      );

  static ComprasStruct? maybeFromMap(dynamic data) =>
      data is Map ? ComprasStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'item': _item,
        'quantidade': _quantidade,
        'uso': _uso,
        'unidade': _unidade,
        'idobra': _idobra,
        'Comprado': _comprado,
        'datacompra': _datacompra,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'item': serializeParam(
          _item,
          ParamType.String,
        ),
        'quantidade': serializeParam(
          _quantidade,
          ParamType.double,
        ),
        'uso': serializeParam(
          _uso,
          ParamType.String,
        ),
        'unidade': serializeParam(
          _unidade,
          ParamType.String,
        ),
        'idobra': serializeParam(
          _idobra,
          ParamType.String,
        ),
        'Comprado': serializeParam(
          _comprado,
          ParamType.bool,
        ),
        'datacompra': serializeParam(
          _datacompra,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static ComprasStruct fromSerializableMap(Map<String, dynamic> data) =>
      ComprasStruct(
        item: deserializeParam(
          data['item'],
          ParamType.String,
          false,
        ),
        quantidade: deserializeParam(
          data['quantidade'],
          ParamType.double,
          false,
        ),
        uso: deserializeParam(
          data['uso'],
          ParamType.String,
          false,
        ),
        unidade: deserializeParam(
          data['unidade'],
          ParamType.String,
          false,
        ),
        idobra: deserializeParam(
          data['idobra'],
          ParamType.String,
          false,
        ),
        comprado: deserializeParam(
          data['Comprado'],
          ParamType.bool,
          false,
        ),
        datacompra: deserializeParam(
          data['datacompra'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'ComprasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ComprasStruct &&
        item == other.item &&
        quantidade == other.quantidade &&
        uso == other.uso &&
        unidade == other.unidade &&
        idobra == other.idobra &&
        comprado == other.comprado &&
        datacompra == other.datacompra;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([item, quantidade, uso, unidade, idobra, comprado, datacompra]);
}

ComprasStruct createComprasStruct({
  String? item,
  double? quantidade,
  String? uso,
  String? unidade,
  String? idobra,
  bool? comprado,
  DateTime? datacompra,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ComprasStruct(
      item: item,
      quantidade: quantidade,
      uso: uso,
      unidade: unidade,
      idobra: idobra,
      comprado: comprado,
      datacompra: datacompra,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ComprasStruct? updateComprasStruct(
  ComprasStruct? compras, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    compras
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addComprasStructData(
  Map<String, dynamic> firestoreData,
  ComprasStruct? compras,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (compras == null) {
    return;
  }
  if (compras.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && compras.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final comprasData = getComprasFirestoreData(compras, forFieldValue);
  final nestedData = comprasData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = compras.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getComprasFirestoreData(
  ComprasStruct? compras, [
  bool forFieldValue = false,
]) {
  if (compras == null) {
    return {};
  }
  final firestoreData = mapToFirestore(compras.toMap());

  // Add any Firestore field values
  compras.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getComprasListFirestoreData(
  List<ComprasStruct>? comprass,
) =>
    comprass?.map((e) => getComprasFirestoreData(e, true)).toList() ?? [];
