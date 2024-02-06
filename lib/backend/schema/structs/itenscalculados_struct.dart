// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItenscalculadosStruct extends FFFirebaseStruct {
  ItenscalculadosStruct({
    String? image,
    List<String>? itenscalc,
    String? name,
    String? id,
    String? descricao,
    String? retornoid,
    List<String>? dadoscalc,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _image = image,
        _itenscalc = itenscalc,
        _name = name,
        _id = id,
        _descricao = descricao,
        _retornoid = retornoid,
        _dadoscalc = dadoscalc,
        super(firestoreUtilData);

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  // "itenscalc" field.
  List<String>? _itenscalc;
  List<String> get itenscalc => _itenscalc ?? const [];
  set itenscalc(List<String>? val) => _itenscalc = val;
  void updateItenscalc(Function(List<String>) updateFn) =>
      updateFn(_itenscalc ??= []);
  bool hasItenscalc() => _itenscalc != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;
  bool hasDescricao() => _descricao != null;

  // "retornoid" field.
  String? _retornoid;
  String get retornoid => _retornoid ?? '';
  set retornoid(String? val) => _retornoid = val;
  bool hasRetornoid() => _retornoid != null;

  // "dadoscalc" field.
  List<String>? _dadoscalc;
  List<String> get dadoscalc => _dadoscalc ?? const [];
  set dadoscalc(List<String>? val) => _dadoscalc = val;
  void updateDadoscalc(Function(List<String>) updateFn) =>
      updateFn(_dadoscalc ??= []);
  bool hasDadoscalc() => _dadoscalc != null;

  static ItenscalculadosStruct fromMap(Map<String, dynamic> data) =>
      ItenscalculadosStruct(
        image: data['image'] as String?,
        itenscalc: getDataList(data['itenscalc']),
        name: data['name'] as String?,
        id: data['id'] as String?,
        descricao: data['descricao'] as String?,
        retornoid: data['retornoid'] as String?,
        dadoscalc: getDataList(data['dadoscalc']),
      );

  static ItenscalculadosStruct? maybeFromMap(dynamic data) => data is Map
      ? ItenscalculadosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'itenscalc': _itenscalc,
        'name': _name,
        'id': _id,
        'descricao': _descricao,
        'retornoid': _retornoid,
        'dadoscalc': _dadoscalc,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'itenscalc': serializeParam(
          _itenscalc,
          ParamType.String,
          true,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'retornoid': serializeParam(
          _retornoid,
          ParamType.String,
        ),
        'dadoscalc': serializeParam(
          _dadoscalc,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static ItenscalculadosStruct fromSerializableMap(Map<String, dynamic> data) =>
      ItenscalculadosStruct(
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        itenscalc: deserializeParam<String>(
          data['itenscalc'],
          ParamType.String,
          true,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
        retornoid: deserializeParam(
          data['retornoid'],
          ParamType.String,
          false,
        ),
        dadoscalc: deserializeParam<String>(
          data['dadoscalc'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'ItenscalculadosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ItenscalculadosStruct &&
        image == other.image &&
        listEquality.equals(itenscalc, other.itenscalc) &&
        name == other.name &&
        id == other.id &&
        descricao == other.descricao &&
        retornoid == other.retornoid &&
        listEquality.equals(dadoscalc, other.dadoscalc);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([image, itenscalc, name, id, descricao, retornoid, dadoscalc]);
}

ItenscalculadosStruct createItenscalculadosStruct({
  String? image,
  String? name,
  String? id,
  String? descricao,
  String? retornoid,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ItenscalculadosStruct(
      image: image,
      name: name,
      id: id,
      descricao: descricao,
      retornoid: retornoid,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ItenscalculadosStruct? updateItenscalculadosStruct(
  ItenscalculadosStruct? itenscalculados, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    itenscalculados
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addItenscalculadosStructData(
  Map<String, dynamic> firestoreData,
  ItenscalculadosStruct? itenscalculados,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (itenscalculados == null) {
    return;
  }
  if (itenscalculados.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && itenscalculados.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final itenscalculadosData =
      getItenscalculadosFirestoreData(itenscalculados, forFieldValue);
  final nestedData =
      itenscalculadosData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = itenscalculados.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getItenscalculadosFirestoreData(
  ItenscalculadosStruct? itenscalculados, [
  bool forFieldValue = false,
]) {
  if (itenscalculados == null) {
    return {};
  }
  final firestoreData = mapToFirestore(itenscalculados.toMap());

  // Add any Firestore field values
  itenscalculados.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getItenscalculadosListFirestoreData(
  List<ItenscalculadosStruct>? itenscalculadoss,
) =>
    itenscalculadoss
        ?.map((e) => getItenscalculadosFirestoreData(e, true))
        .toList() ??
    [];
