// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_hive.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserHive {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get username => throw _privateConstructorUsedError;
  @HiveField(3)
  String get email => throw _privateConstructorUsedError;
  @HiveField(4)
  String get phone => throw _privateConstructorUsedError;
  @HiveField(5)
  String get website => throw _privateConstructorUsedError;
  @HiveField(6)
  AddressHive? get address => throw _privateConstructorUsedError;
  @HiveField(7)
  CompanyHive? get company => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserHiveCopyWith<UserHive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserHiveCopyWith<$Res> {
  factory $UserHiveCopyWith(UserHive value, $Res Function(UserHive) then) =
      _$UserHiveCopyWithImpl<$Res, UserHive>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String name,
      @HiveField(2) String username,
      @HiveField(3) String email,
      @HiveField(4) String phone,
      @HiveField(5) String website,
      @HiveField(6) AddressHive? address,
      @HiveField(7) CompanyHive? company});

  $AddressHiveCopyWith<$Res>? get address;
  $CompanyHiveCopyWith<$Res>? get company;
}

/// @nodoc
class _$UserHiveCopyWithImpl<$Res, $Val extends UserHive>
    implements $UserHiveCopyWith<$Res> {
  _$UserHiveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? email = null,
    Object? phone = null,
    Object? website = null,
    Object? address = freezed,
    Object? company = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressHive?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyHive?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressHiveCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressHiveCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyHiveCopyWith<$Res>? get company {
    if (_value.company == null) {
      return null;
    }

    return $CompanyHiveCopyWith<$Res>(_value.company!, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserHiveImplCopyWith<$Res>
    implements $UserHiveCopyWith<$Res> {
  factory _$$UserHiveImplCopyWith(
          _$UserHiveImpl value, $Res Function(_$UserHiveImpl) then) =
      __$$UserHiveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String name,
      @HiveField(2) String username,
      @HiveField(3) String email,
      @HiveField(4) String phone,
      @HiveField(5) String website,
      @HiveField(6) AddressHive? address,
      @HiveField(7) CompanyHive? company});

  @override
  $AddressHiveCopyWith<$Res>? get address;
  @override
  $CompanyHiveCopyWith<$Res>? get company;
}

/// @nodoc
class __$$UserHiveImplCopyWithImpl<$Res>
    extends _$UserHiveCopyWithImpl<$Res, _$UserHiveImpl>
    implements _$$UserHiveImplCopyWith<$Res> {
  __$$UserHiveImplCopyWithImpl(
      _$UserHiveImpl _value, $Res Function(_$UserHiveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? email = null,
    Object? phone = null,
    Object? website = null,
    Object? address = freezed,
    Object? company = freezed,
  }) {
    return _then(_$UserHiveImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressHive?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyHive?,
    ));
  }
}

/// @nodoc

class _$UserHiveImpl extends _UserHive {
  _$UserHiveImpl(
      {@HiveField(0) this.id = 0,
      @HiveField(1) this.name = '',
      @HiveField(2) this.username = '',
      @HiveField(3) this.email = '',
      @HiveField(4) this.phone = '',
      @HiveField(5) this.website = '',
      @HiveField(6) this.address = null,
      @HiveField(7) this.company = null})
      : super._();

  @override
  @JsonKey()
  @HiveField(0)
  final int id;
  @override
  @JsonKey()
  @HiveField(1)
  final String name;
  @override
  @JsonKey()
  @HiveField(2)
  final String username;
  @override
  @JsonKey()
  @HiveField(3)
  final String email;
  @override
  @JsonKey()
  @HiveField(4)
  final String phone;
  @override
  @JsonKey()
  @HiveField(5)
  final String website;
  @override
  @JsonKey()
  @HiveField(6)
  final AddressHive? address;
  @override
  @JsonKey()
  @HiveField(7)
  final CompanyHive? company;

  @override
  String toString() {
    return 'UserHive(id: $id, name: $name, username: $username, email: $email, phone: $phone, website: $website, address: $address, company: $company)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserHiveImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.company, company) || other.company == company));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, username, email, phone, website, address, company);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserHiveImplCopyWith<_$UserHiveImpl> get copyWith =>
      __$$UserHiveImplCopyWithImpl<_$UserHiveImpl>(this, _$identity);
}

abstract class _UserHive extends UserHive {
  factory _UserHive(
      {@HiveField(0) final int id,
      @HiveField(1) final String name,
      @HiveField(2) final String username,
      @HiveField(3) final String email,
      @HiveField(4) final String phone,
      @HiveField(5) final String website,
      @HiveField(6) final AddressHive? address,
      @HiveField(7) final CompanyHive? company}) = _$UserHiveImpl;
  _UserHive._() : super._();

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  String get username;
  @override
  @HiveField(3)
  String get email;
  @override
  @HiveField(4)
  String get phone;
  @override
  @HiveField(5)
  String get website;
  @override
  @HiveField(6)
  AddressHive? get address;
  @override
  @HiveField(7)
  CompanyHive? get company;
  @override
  @JsonKey(ignore: true)
  _$$UserHiveImplCopyWith<_$UserHiveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
