// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_hive.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddressHive {
  @HiveField(0)
  String get street => throw _privateConstructorUsedError;
  @HiveField(1)
  String get suite => throw _privateConstructorUsedError;
  @HiveField(2)
  String get city => throw _privateConstructorUsedError;
  @HiveField(3)
  String get zipcode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressHiveCopyWith<AddressHive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressHiveCopyWith<$Res> {
  factory $AddressHiveCopyWith(
          AddressHive value, $Res Function(AddressHive) then) =
      _$AddressHiveCopyWithImpl<$Res, AddressHive>;
  @useResult
  $Res call(
      {@HiveField(0) String street,
      @HiveField(1) String suite,
      @HiveField(2) String city,
      @HiveField(3) String zipcode});
}

/// @nodoc
class _$AddressHiveCopyWithImpl<$Res, $Val extends AddressHive>
    implements $AddressHiveCopyWith<$Res> {
  _$AddressHiveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = null,
    Object? suite = null,
    Object? city = null,
    Object? zipcode = null,
  }) {
    return _then(_value.copyWith(
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      suite: null == suite
          ? _value.suite
          : suite // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      zipcode: null == zipcode
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressHiveImplCopyWith<$Res>
    implements $AddressHiveCopyWith<$Res> {
  factory _$$AddressHiveImplCopyWith(
          _$AddressHiveImpl value, $Res Function(_$AddressHiveImpl) then) =
      __$$AddressHiveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String street,
      @HiveField(1) String suite,
      @HiveField(2) String city,
      @HiveField(3) String zipcode});
}

/// @nodoc
class __$$AddressHiveImplCopyWithImpl<$Res>
    extends _$AddressHiveCopyWithImpl<$Res, _$AddressHiveImpl>
    implements _$$AddressHiveImplCopyWith<$Res> {
  __$$AddressHiveImplCopyWithImpl(
      _$AddressHiveImpl _value, $Res Function(_$AddressHiveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = null,
    Object? suite = null,
    Object? city = null,
    Object? zipcode = null,
  }) {
    return _then(_$AddressHiveImpl(
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      suite: null == suite
          ? _value.suite
          : suite // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      zipcode: null == zipcode
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddressHiveImpl extends _AddressHive {
  _$AddressHiveImpl(
      {@HiveField(0) this.street = '',
      @HiveField(1) this.suite = '',
      @HiveField(2) this.city = '',
      @HiveField(3) this.zipcode = ''})
      : super._();

  @override
  @JsonKey()
  @HiveField(0)
  final String street;
  @override
  @JsonKey()
  @HiveField(1)
  final String suite;
  @override
  @JsonKey()
  @HiveField(2)
  final String city;
  @override
  @JsonKey()
  @HiveField(3)
  final String zipcode;

  @override
  String toString() {
    return 'AddressHive(street: $street, suite: $suite, city: $city, zipcode: $zipcode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressHiveImpl &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.suite, suite) || other.suite == suite) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.zipcode, zipcode) || other.zipcode == zipcode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, street, suite, city, zipcode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressHiveImplCopyWith<_$AddressHiveImpl> get copyWith =>
      __$$AddressHiveImplCopyWithImpl<_$AddressHiveImpl>(this, _$identity);
}

abstract class _AddressHive extends AddressHive {
  factory _AddressHive(
      {@HiveField(0) final String street,
      @HiveField(1) final String suite,
      @HiveField(2) final String city,
      @HiveField(3) final String zipcode}) = _$AddressHiveImpl;
  _AddressHive._() : super._();

  @override
  @HiveField(0)
  String get street;
  @override
  @HiveField(1)
  String get suite;
  @override
  @HiveField(2)
  String get city;
  @override
  @HiveField(3)
  String get zipcode;
  @override
  @JsonKey(ignore: true)
  _$$AddressHiveImplCopyWith<_$AddressHiveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
