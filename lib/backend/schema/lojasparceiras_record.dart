import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class LojasparceirasRecord extends FirestoreRecord {
  LojasparceirasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "NomeLoja" field.
  String? _nomeLoja;
  String get nomeLoja => _nomeLoja ?? '';
  bool hasNomeLoja() => _nomeLoja != null;

  // "imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  bool hasImagem() => _imagem != null;

  // "desconto" field.
  String? _desconto;
  String get desconto => _desconto ?? '';
  bool hasDesconto() => _desconto != null;

  // "linkacesso" field.
  String? _linkacesso;
  String get linkacesso => _linkacesso ?? '';
  bool hasLinkacesso() => _linkacesso != null;

  // "cor" field.
  Color? _cor;
  Color? get cor => _cor;
  bool hasCor() => _cor != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  void _initializeFields() {
    _nomeLoja = snapshotData['NomeLoja'] as String?;
    _imagem = snapshotData['imagem'] as String?;
    _desconto = snapshotData['desconto'] as String?;
    _linkacesso = snapshotData['linkacesso'] as String?;
    _cor = getSchemaColor(snapshotData['cor']);
    _descricao = snapshotData['descricao'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('lojasparceiras');

  static Stream<LojasparceirasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LojasparceirasRecord.fromSnapshot(s));

  static Future<LojasparceirasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LojasparceirasRecord.fromSnapshot(s));

  static LojasparceirasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LojasparceirasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LojasparceirasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LojasparceirasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LojasparceirasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LojasparceirasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLojasparceirasRecordData({
  String? nomeLoja,
  String? imagem,
  String? desconto,
  String? linkacesso,
  Color? cor,
  String? descricao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NomeLoja': nomeLoja,
      'imagem': imagem,
      'desconto': desconto,
      'linkacesso': linkacesso,
      'cor': cor,
      'descricao': descricao,
    }.withoutNulls,
  );

  return firestoreData;
}

class LojasparceirasRecordDocumentEquality
    implements Equality<LojasparceirasRecord> {
  const LojasparceirasRecordDocumentEquality();

  @override
  bool equals(LojasparceirasRecord? e1, LojasparceirasRecord? e2) {
    return e1?.nomeLoja == e2?.nomeLoja &&
        e1?.imagem == e2?.imagem &&
        e1?.desconto == e2?.desconto &&
        e1?.linkacesso == e2?.linkacesso &&
        e1?.cor == e2?.cor &&
        e1?.descricao == e2?.descricao;
  }

  @override
  int hash(LojasparceirasRecord? e) => const ListEquality().hash([
        e?.nomeLoja,
        e?.imagem,
        e?.desconto,
        e?.linkacesso,
        e?.cor,
        e?.descricao
      ]);

  @override
  bool isValidKey(Object? o) => o is LojasparceirasRecord;
}
