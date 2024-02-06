// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DadosobraStruct extends FFFirebaseStruct {
  DadosobraStruct({
    String? nome,
    String? endereco,
    String? id,
    String? contato,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nome = nome,
        _endereco = endereco,
        _id = id,
        _contato = contato,
        super(firestoreUtilData);

  // "Nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;
  bool hasNome() => _nome != null;

  // "Endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  set endereco(String? val) => _endereco = val;
  bool hasEndereco() => _endereco != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "contato" field.
  String? _contato;
  String get contato => _contato ?? '';
  set contato(String? val) => _contato = val;
  bool hasContato() => _contato != null;

  static DadosobraStruct fromMap(Map<String, dynamic> data) => DadosobraStruct(
        nome: data['Nome'] as String?,
        endereco: data['Endereco'] as String?,
        id: data['id'] as String?,
        contato: data['contato'] as String?,
      );

  static DadosobraStruct? maybeFromMap(dynamic data) => data is Map
      ? DadosobraStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Nome': _nome,
        'Endereco': _endereco,
        'id': _id,
        'contato': _contato,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'Endereco': serializeParam(
          _endereco,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'contato': serializeParam(
          _contato,
          ParamType.String,
        ),
      }.withoutNulls;

  static DadosobraStruct fromSerializableMap(Map<String, dynamic> data) =>
      DadosobraStruct(
        nome: deserializeParam(
          data['Nome'],
          ParamType.String,
          false,
        ),
        endereco: deserializeParam(
          data['Endereco'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        contato: deserializeParam(
          data['contato'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DadosobraStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DadosobraStruct &&
        nome == other.nome &&
        endereco == other.endereco &&
        id == other.id &&
        contato == other.contato;
  }

  @override
  int get hashCode => const ListEquality().hash([nome, endereco, id, contato]);
}

DadosobraStruct createDadosobraStruct({
  String? nome,
  String? endereco,
  String? id,
  String? contato,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DadosobraStruct(
      nome: nome,
      endereco: endereco,
      id: id,
      contato: contato,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DadosobraStruct? updateDadosobraStruct(
  DadosobraStruct? dadosobra, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dadosobra
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDadosobraStructData(
  Map<String, dynamic> firestoreData,
  DadosobraStruct? dadosobra,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dadosobra == null) {
    return;
  }
  if (dadosobra.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dadosobra.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dadosobraData = getDadosobraFirestoreData(dadosobra, forFieldValue);
  final nestedData = dadosobraData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dadosobra.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDadosobraFirestoreData(
  DadosobraStruct? dadosobra, [
  bool forFieldValue = false,
]) {
  if (dadosobra == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dadosobra.toMap());

  // Add any Firestore field values
  dadosobra.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDadosobraListFirestoreData(
  List<DadosobraStruct>? dadosobras,
) =>
    dadosobras?.map((e) => getDadosobraFirestoreData(e, true)).toList() ?? [];
