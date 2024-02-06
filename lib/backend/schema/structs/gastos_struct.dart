// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GastosStruct extends FFFirebaseStruct {
  GastosStruct({
    String? tipo,
    String? fornecedor,
    DateTime? data,
    String? nfe,
    double? valor,
    String? idobra,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _tipo = tipo,
        _fornecedor = fornecedor,
        _data = data,
        _nfe = nfe,
        _valor = valor,
        _idobra = idobra,
        super(firestoreUtilData);

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  set tipo(String? val) => _tipo = val;
  bool hasTipo() => _tipo != null;

  // "fornecedor" field.
  String? _fornecedor;
  String get fornecedor => _fornecedor ?? '';
  set fornecedor(String? val) => _fornecedor = val;
  bool hasFornecedor() => _fornecedor != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  set data(DateTime? val) => _data = val;
  bool hasData() => _data != null;

  // "nfe" field.
  String? _nfe;
  String get nfe => _nfe ?? '';
  set nfe(String? val) => _nfe = val;
  bool hasNfe() => _nfe != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  set valor(double? val) => _valor = val;
  void incrementValor(double amount) => _valor = valor + amount;
  bool hasValor() => _valor != null;

  // "idobra" field.
  String? _idobra;
  String get idobra => _idobra ?? '';
  set idobra(String? val) => _idobra = val;
  bool hasIdobra() => _idobra != null;

  static GastosStruct fromMap(Map<String, dynamic> data) => GastosStruct(
        tipo: data['tipo'] as String?,
        fornecedor: data['fornecedor'] as String?,
        data: data['data'] as DateTime?,
        nfe: data['nfe'] as String?,
        valor: castToType<double>(data['valor']),
        idobra: data['idobra'] as String?,
      );

  static GastosStruct? maybeFromMap(dynamic data) =>
      data is Map ? GastosStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'tipo': _tipo,
        'fornecedor': _fornecedor,
        'data': _data,
        'nfe': _nfe,
        'valor': _valor,
        'idobra': _idobra,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tipo': serializeParam(
          _tipo,
          ParamType.String,
        ),
        'fornecedor': serializeParam(
          _fornecedor,
          ParamType.String,
        ),
        'data': serializeParam(
          _data,
          ParamType.DateTime,
        ),
        'nfe': serializeParam(
          _nfe,
          ParamType.String,
        ),
        'valor': serializeParam(
          _valor,
          ParamType.double,
        ),
        'idobra': serializeParam(
          _idobra,
          ParamType.String,
        ),
      }.withoutNulls;

  static GastosStruct fromSerializableMap(Map<String, dynamic> data) =>
      GastosStruct(
        tipo: deserializeParam(
          data['tipo'],
          ParamType.String,
          false,
        ),
        fornecedor: deserializeParam(
          data['fornecedor'],
          ParamType.String,
          false,
        ),
        data: deserializeParam(
          data['data'],
          ParamType.DateTime,
          false,
        ),
        nfe: deserializeParam(
          data['nfe'],
          ParamType.String,
          false,
        ),
        valor: deserializeParam(
          data['valor'],
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
  String toString() => 'GastosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GastosStruct &&
        tipo == other.tipo &&
        fornecedor == other.fornecedor &&
        data == other.data &&
        nfe == other.nfe &&
        valor == other.valor &&
        idobra == other.idobra;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([tipo, fornecedor, data, nfe, valor, idobra]);
}

GastosStruct createGastosStruct({
  String? tipo,
  String? fornecedor,
  DateTime? data,
  String? nfe,
  double? valor,
  String? idobra,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GastosStruct(
      tipo: tipo,
      fornecedor: fornecedor,
      data: data,
      nfe: nfe,
      valor: valor,
      idobra: idobra,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

GastosStruct? updateGastosStruct(
  GastosStruct? gastos, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    gastos
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addGastosStructData(
  Map<String, dynamic> firestoreData,
  GastosStruct? gastos,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (gastos == null) {
    return;
  }
  if (gastos.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && gastos.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final gastosData = getGastosFirestoreData(gastos, forFieldValue);
  final nestedData = gastosData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = gastos.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getGastosFirestoreData(
  GastosStruct? gastos, [
  bool forFieldValue = false,
]) {
  if (gastos == null) {
    return {};
  }
  final firestoreData = mapToFirestore(gastos.toMap());

  // Add any Firestore field values
  gastos.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGastosListFirestoreData(
  List<GastosStruct>? gastoss,
) =>
    gastoss?.map((e) => getGastosFirestoreData(e, true)).toList() ?? [];
