// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BankRecord> _$bankRecordSerializer = new _$BankRecordSerializer();

class _$BankRecordSerializer implements StructuredSerializer<BankRecord> {
  @override
  final Iterable<Type> types = const [BankRecord, _$BankRecord];
  @override
  final String wireName = 'BankRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BankRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.dateCi;
    if (value != null) {
      result
        ..add('date_ci')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.numberCi;
    if (value != null) {
      result
        ..add('number_ci')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bank;
    if (value != null) {
      result
        ..add('bank')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numberBank;
    if (value != null) {
      result
        ..add('number_bank')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.typeBank;
    if (value != null) {
      result
        ..add('type_bank')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  BankRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BankRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'date_ci':
          result.dateCi = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'number_ci':
          result.numberCi = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bank':
          result.bank = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'number_bank':
          result.numberBank = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'type_bank':
          result.typeBank = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$BankRecord extends BankRecord {
  @override
  final DateTime? dateCi;
  @override
  final String? numberCi;
  @override
  final String? bank;
  @override
  final int? numberBank;
  @override
  final String? typeBank;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BankRecord([void Function(BankRecordBuilder)? updates]) =>
      (new BankRecordBuilder()..update(updates))._build();

  _$BankRecord._(
      {this.dateCi,
      this.numberCi,
      this.bank,
      this.numberBank,
      this.typeBank,
      this.ffRef})
      : super._();

  @override
  BankRecord rebuild(void Function(BankRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BankRecordBuilder toBuilder() => new BankRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BankRecord &&
        dateCi == other.dateCi &&
        numberCi == other.numberCi &&
        bank == other.bank &&
        numberBank == other.numberBank &&
        typeBank == other.typeBank &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, dateCi.hashCode), numberCi.hashCode),
                    bank.hashCode),
                numberBank.hashCode),
            typeBank.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BankRecord')
          ..add('dateCi', dateCi)
          ..add('numberCi', numberCi)
          ..add('bank', bank)
          ..add('numberBank', numberBank)
          ..add('typeBank', typeBank)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BankRecordBuilder implements Builder<BankRecord, BankRecordBuilder> {
  _$BankRecord? _$v;

  DateTime? _dateCi;
  DateTime? get dateCi => _$this._dateCi;
  set dateCi(DateTime? dateCi) => _$this._dateCi = dateCi;

  String? _numberCi;
  String? get numberCi => _$this._numberCi;
  set numberCi(String? numberCi) => _$this._numberCi = numberCi;

  String? _bank;
  String? get bank => _$this._bank;
  set bank(String? bank) => _$this._bank = bank;

  int? _numberBank;
  int? get numberBank => _$this._numberBank;
  set numberBank(int? numberBank) => _$this._numberBank = numberBank;

  String? _typeBank;
  String? get typeBank => _$this._typeBank;
  set typeBank(String? typeBank) => _$this._typeBank = typeBank;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BankRecordBuilder() {
    BankRecord._initializeBuilder(this);
  }

  BankRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dateCi = $v.dateCi;
      _numberCi = $v.numberCi;
      _bank = $v.bank;
      _numberBank = $v.numberBank;
      _typeBank = $v.typeBank;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BankRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BankRecord;
  }

  @override
  void update(void Function(BankRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BankRecord build() => _build();

  _$BankRecord _build() {
    final _$result = _$v ??
        new _$BankRecord._(
            dateCi: dateCi,
            numberCi: numberCi,
            bank: bank,
            numberBank: numberBank,
            typeBank: typeBank,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
