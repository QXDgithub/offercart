import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class FoodoffersRecord extends FirestoreRecord {
  FoodoffersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('foodoffers');

  static Stream<FoodoffersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FoodoffersRecord.fromSnapshot(s));

  static Future<FoodoffersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FoodoffersRecord.fromSnapshot(s));

  static FoodoffersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FoodoffersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FoodoffersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FoodoffersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FoodoffersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FoodoffersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFoodoffersRecordData({
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class FoodoffersRecordDocumentEquality implements Equality<FoodoffersRecord> {
  const FoodoffersRecordDocumentEquality();

  @override
  bool equals(FoodoffersRecord? e1, FoodoffersRecord? e2) {
    return e1?.name == e2?.name;
  }

  @override
  int hash(FoodoffersRecord? e) => const ListEquality().hash([e?.name]);

  @override
  bool isValidKey(Object? o) => o is FoodoffersRecord;
}
