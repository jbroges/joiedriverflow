// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VehicleRecord> _$vehicleRecordSerializer =
    new _$VehicleRecordSerializer();

class _$VehicleRecordSerializer implements StructuredSerializer<VehicleRecord> {
  @override
  final Iterable<Type> types = const [VehicleRecord, _$VehicleRecord];
  @override
  final String wireName = 'VehicleRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, VehicleRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.brand;
    if (value != null) {
      result
        ..add('brand')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.capacity;
    if (value != null) {
      result
        ..add('capacity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.color;
    if (value != null) {
      result
        ..add('color')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.plate;
    if (value != null) {
      result
        ..add('plate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.year;
    if (value != null) {
      result
        ..add('year')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  VehicleRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VehicleRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'brand':
          result.brand = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'capacity':
          result.capacity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'plate':
          result.plate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$VehicleRecord extends VehicleRecord {
  @override
  final String? brand;
  @override
  final int? capacity;
  @override
  final String? color;
  @override
  final String? plate;
  @override
  final int? year;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VehicleRecord([void Function(VehicleRecordBuilder)? updates]) =>
      (new VehicleRecordBuilder()..update(updates))._build();

  _$VehicleRecord._(
      {this.brand,
      this.capacity,
      this.color,
      this.plate,
      this.year,
      this.ffRef})
      : super._();

  @override
  VehicleRecord rebuild(void Function(VehicleRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VehicleRecordBuilder toBuilder() => new VehicleRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VehicleRecord &&
        brand == other.brand &&
        capacity == other.capacity &&
        color == other.color &&
        plate == other.plate &&
        year == other.year &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, brand.hashCode), capacity.hashCode),
                    color.hashCode),
                plate.hashCode),
            year.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VehicleRecord')
          ..add('brand', brand)
          ..add('capacity', capacity)
          ..add('color', color)
          ..add('plate', plate)
          ..add('year', year)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VehicleRecordBuilder
    implements Builder<VehicleRecord, VehicleRecordBuilder> {
  _$VehicleRecord? _$v;

  String? _brand;
  String? get brand => _$this._brand;
  set brand(String? brand) => _$this._brand = brand;

  int? _capacity;
  int? get capacity => _$this._capacity;
  set capacity(int? capacity) => _$this._capacity = capacity;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  String? _plate;
  String? get plate => _$this._plate;
  set plate(String? plate) => _$this._plate = plate;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VehicleRecordBuilder() {
    VehicleRecord._initializeBuilder(this);
  }

  VehicleRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _brand = $v.brand;
      _capacity = $v.capacity;
      _color = $v.color;
      _plate = $v.plate;
      _year = $v.year;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VehicleRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VehicleRecord;
  }

  @override
  void update(void Function(VehicleRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VehicleRecord build() => _build();

  _$VehicleRecord _build() {
    final _$result = _$v ??
        new _$VehicleRecord._(
            brand: brand,
            capacity: capacity,
            color: color,
            plate: plate,
            year: year,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
