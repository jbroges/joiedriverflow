import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  String? get email;

  String? get password;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  String? get address;

  @BuiltValueField(wireName: 'date_birth')
  DateTime? get dateBirth;

  String? get gender;

  @BuiltValueField(wireName: 'last_name')
  String? get lastName;

  String? get name;

  String? get phone;

  @BuiltValueField(wireName: 'referrer_code')
  String? get referrerCode;

  @BuiltValueField(wireName: 'code_referred')
  String? get codeReferred;

  String? get type;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..password = ''
    ..photoUrl = ''
    ..uid = ''
    ..address = ''
    ..gender = ''
    ..lastName = ''
    ..name = ''
    ..phone = ''
    ..referrerCode = ''
    ..codeReferred = ''
    ..type = ''
    ..phoneNumber = ''
    ..displayName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? password,
  String? photoUrl,
  String? uid,
  String? address,
  DateTime? dateBirth,
  String? gender,
  String? lastName,
  String? name,
  String? phone,
  String? referrerCode,
  String? codeReferred,
  String? type,
  DateTime? createdTime,
  String? phoneNumber,
  String? displayName,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..email = email
        ..password = password
        ..photoUrl = photoUrl
        ..uid = uid
        ..address = address
        ..dateBirth = dateBirth
        ..gender = gender
        ..lastName = lastName
        ..name = name
        ..phone = phone
        ..referrerCode = referrerCode
        ..codeReferred = codeReferred
        ..type = type
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..displayName = displayName,
    ),
  );

  return firestoreData;
}
