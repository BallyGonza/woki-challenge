// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_hive.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CompanyHive {
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  String get catchPhrase => throw _privateConstructorUsedError;
  @HiveField(2)
  String get bs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompanyHiveCopyWith<CompanyHive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyHiveCopyWith<$Res> {
  factory $CompanyHiveCopyWith(
          CompanyHive value, $Res Function(CompanyHive) then) =
      _$CompanyHiveCopyWithImpl<$Res, CompanyHive>;
  @useResult
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) String catchPhrase,
      @HiveField(2) String bs});
}

/// @nodoc
class _$CompanyHiveCopyWithImpl<$Res, $Val extends CompanyHive>
    implements $CompanyHiveCopyWith<$Res> {
  _$CompanyHiveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? catchPhrase = null,
    Object? bs = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      catchPhrase: null == catchPhrase
          ? _value.catchPhrase
          : catchPhrase // ignore: cast_nullable_to_non_nullable
              as String,
      bs: null == bs
          ? _value.bs
          : bs // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyHiveImplCopyWith<$Res>
    implements $CompanyHiveCopyWith<$Res> {
  factory _$$CompanyHiveImplCopyWith(
          _$CompanyHiveImpl value, $Res Function(_$CompanyHiveImpl) then) =
      __$$CompanyHiveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) String catchPhrase,
      @HiveField(2) String bs});
}

/// @nodoc
class __$$CompanyHiveImplCopyWithImpl<$Res>
    extends _$CompanyHiveCopyWithImpl<$Res, _$CompanyHiveImpl>
    implements _$$CompanyHiveImplCopyWith<$Res> {
  __$$CompanyHiveImplCopyWithImpl(
      _$CompanyHiveImpl _value, $Res Function(_$CompanyHiveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? catchPhrase = null,
    Object? bs = null,
  }) {
    return _then(_$CompanyHiveImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      catchPhrase: null == catchPhrase
          ? _value.catchPhrase
          : catchPhrase // ignore: cast_nullable_to_non_nullable
              as String,
      bs: null == bs
          ? _value.bs
          : bs // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CompanyHiveImpl extends _CompanyHive {
  _$CompanyHiveImpl(
      {@HiveField(0) this.name = '',
      @HiveField(1) this.catchPhrase = '',
      @HiveField(2) this.bs = ''})
      : super._();

  @override
  @JsonKey()
  @HiveField(0)
  final String name;
  @override
  @JsonKey()
  @HiveField(1)
  final String catchPhrase;
  @override
  @JsonKey()
  @HiveField(2)
  final String bs;

  @override
  String toString() {
    return 'CompanyHive(name: $name, catchPhrase: $catchPhrase, bs: $bs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyHiveImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.catchPhrase, catchPhrase) ||
                other.catchPhrase == catchPhrase) &&
            (identical(other.bs, bs) || other.bs == bs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, catchPhrase, bs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyHiveImplCopyWith<_$CompanyHiveImpl> get copyWith =>
      __$$CompanyHiveImplCopyWithImpl<_$CompanyHiveImpl>(this, _$identity);
}

abstract class _CompanyHive extends CompanyHive {
  factory _CompanyHive(
      {@HiveField(0) final String name,
      @HiveField(1) final String catchPhrase,
      @HiveField(2) final String bs}) = _$CompanyHiveImpl;
  _CompanyHive._() : super._();

  @override
  @HiveField(0)
  String get name;
  @override
  @HiveField(1)
  String get catchPhrase;
  @override
  @HiveField(2)
  String get bs;
  @override
  @JsonKey(ignore: true)
  _$$CompanyHiveImplCopyWith<_$CompanyHiveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
