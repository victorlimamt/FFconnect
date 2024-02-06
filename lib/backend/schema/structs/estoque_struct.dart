// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EstoqueStruct extends FFFirebaseStruct {
  EstoqueStruct({
    String? item,
    String? unidade,
    double? quantidade,
    String? idobra,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _item = item,
        _unidade = unidade,
        _quantidade = quantidade,
        _idobra = idobra,
        super(firestoreUtilData);

  // "item" field.
  String? _item;
  String get item => _item ?? '';
  set item(String? val) => _item = val;
  bool hasItem() => _item != null;

  // "unidade" field.
  String? _unidade;
  String get unidade => _unidade ?? '';
  set unidade(String? val) => _unidade = val;
  bool hasUnidade() => _unidade != null;

  // "quantidade" field.
  double? _quantidade;
  double get quantidade => _quantidade ?? 0.0;
  set quantidade(double? val) => _quantidade = val;
  void incrementQuantidade(double amount) => _quantidade = quantidade + amount;
  bool hasQuantidade() => _quantidade != null;

  // "idobra" field.
  String? _idobra;
  String get idobra => _idobra ?? '';
  set idobra(String? val) => _idobra = val;
  bool hasIdobra() => _idobra != null;

  static EstoqueStruct fromMap(Map<String, dynamic> data) => EstoqueStruct(
        item: data['item'] as String?,
        unidade: data['unidade'] as String?,
        quantidade: castToType<double>(data['quantidade']),
        idobra: data['idobra'] as String?,
      );

  static EstoqueStruct? maybeFromMap(dynamic data) =>
      data is Map ? EstoqueStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'item': _item,
        'unidade': _unidade,
        'quantidade': _quantidade,
        'idobra': _idobra,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'item': serializeParam(
          _item,
          ParamType.String,
        ),
        'unidade': serializeParam(
          _unidade,
          ParamType.String,
        ),
        'quantidade': serializeParam(
          _quantidade,
          ParamType.double,
        ),
        'idobra': serializeParam(
          _idobra,
          ParamType.String,
        ),
      }.withoutNulls;

  static EstoqueStruct fromSerializableMap(Map<String, dynamic> data) =>
      EstoqueStruct(
        item: deserializeParam(
          data['item'],
          ParamType.String,
          false,
        ),
        unidade: deserializeParam(
          data['unidade'],
          ParamType.String,
          false,
        ),
        quantidade: deserializeParam(
          data['quantidade'],
          ParamType.double,
          false,
        ),
        idobra: deserializeParam(
          data['idobra'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EstoqueStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EstoqueStruct &&
        item == other.item &&
        unidade == other.unidade &&
        quantidade == other.quantidade &&
        idobra == other.idobra;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([item, unidade, quantidade, idobra]);
}

EstoqueStruct createEstoqueStruct({
  String? item,
  String? unidade,
  double? quantidade,
  String? idobra,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EstoqueStruct(
      item: item,
      unidade: unidade,
      quantidade: quantidade,
      idobra: idobra,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EstoqueStruct? updateEstoqueStruct(
  EstoqueStruct? estoque, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    estoque
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEstoqueStructData(
  Map<String, dynamic> firestoreData,
  EstoqueStruct? estoque,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (estoque == null) {
    return;
  }
  if (estoque.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && estoque.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final estoqueData = getEstoqueFirestoreData(estoque, forFieldValue);
  final nestedData = estoqueData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = estoque.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEstoqueFirestoreData(
  EstoqueStruct? estoque, [
  bool forFieldValue = false,
]) {
  if (estoque == null) {
    return {};
  }
  final firestoreData = mapToFirestore(estoque.toMap());

  // Add any Firestore field values
  estoque.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEstoqueListFirestoreData(
  List<EstoqueStruct>? estoques,
) =>
    estoques?.map((e) => getEstoqueFirestoreData(e, true)).toList() ?? [];
