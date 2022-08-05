import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'vehicle_record.g.dart';

abstract class VehicleRecord
    implements Built<VehicleRecord, VehicleRecordBuilder> {
  static Serializer<VehicleRecord> get serializer => _$vehicleRecordSerializer;

  String? get brand;

  int? get capacity;

  String? get color;

  String? get plate;

  int? get year;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(VehicleRecordBuilder builder) => builder
    ..brand = ''
    ..capacity = 0
    ..color = ''
    ..plate = ''
    ..year = 0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('vehicle')
          : FirebaseFirestore.instance.collectionGroup('vehicle');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('vehicle').doc();

  static Stream<VehicleRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VehicleRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VehicleRecord._();
  factory VehicleRecord([void Function(VehicleRecordBuilder) updates]) =
      _$VehicleRecord;

  static VehicleRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVehicleRecordData({
  String? brand,
  int? capacity,
  String? color,
  String? plate,
  int? year,
}) {
  final firestoreData = serializers.toFirestore(
    VehicleRecord.serializer,
    VehicleRecord(
      (v) => v
        ..brand = brand
        ..capacity = capacity
        ..color = color
        ..plate = plate
        ..year = year,
    ),
  );

  return firestoreData;
}
