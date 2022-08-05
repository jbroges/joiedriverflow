import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'bank_record.g.dart';

abstract class BankRecord implements Built<BankRecord, BankRecordBuilder> {
  static Serializer<BankRecord> get serializer => _$bankRecordSerializer;

  @BuiltValueField(wireName: 'date_ci')
  DateTime? get dateCi;

  @BuiltValueField(wireName: 'number_ci')
  String? get numberCi;

  String? get bank;

  @BuiltValueField(wireName: 'number_bank')
  int? get numberBank;

  @BuiltValueField(wireName: 'type_bank')
  String? get typeBank;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(BankRecordBuilder builder) => builder
    ..numberCi = ''
    ..bank = ''
    ..numberBank = 0
    ..typeBank = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('bank')
          : FirebaseFirestore.instance.collectionGroup('bank');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('bank').doc();

  static Stream<BankRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BankRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BankRecord._();
  factory BankRecord([void Function(BankRecordBuilder) updates]) = _$BankRecord;

  static BankRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBankRecordData({
  DateTime? dateCi,
  String? numberCi,
  String? bank,
  int? numberBank,
  String? typeBank,
}) {
  final firestoreData = serializers.toFirestore(
    BankRecord.serializer,
    BankRecord(
      (b) => b
        ..dateCi = dateCi
        ..numberCi = numberCi
        ..bank = bank
        ..numberBank = numberBank
        ..typeBank = typeBank,
    ),
  );

  return firestoreData;
}
