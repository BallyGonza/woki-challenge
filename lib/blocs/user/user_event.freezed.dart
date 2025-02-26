// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() getUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? getUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? getUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitialEvent value) init,
    required TResult Function(UserGetUsersEvent value) getUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitialEvent value)? init,
    TResult? Function(UserGetUsersEvent value)? getUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitialEvent value)? init,
    TResult Function(UserGetUsersEvent value)? getUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserInitialEventImplCopyWith<$Res> {
  factory _$$UserInitialEventImplCopyWith(_$UserInitialEventImpl value,
          $Res Function(_$UserInitialEventImpl) then) =
      __$$UserInitialEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserInitialEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserInitialEventImpl>
    implements _$$UserInitialEventImplCopyWith<$Res> {
  __$$UserInitialEventImplCopyWithImpl(_$UserInitialEventImpl _value,
      $Res Function(_$UserInitialEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserInitialEventImpl implements UserInitialEvent {
  const _$UserInitialEventImpl();

  @override
  String toString() {
    return 'UserEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserInitialEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() getUsers,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? getUsers,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? getUsers,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitialEvent value) init,
    required TResult Function(UserGetUsersEvent value) getUsers,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitialEvent value)? init,
    TResult? Function(UserGetUsersEvent value)? getUsers,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitialEvent value)? init,
    TResult Function(UserGetUsersEvent value)? getUsers,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class UserInitialEvent implements UserEvent {
  const factory UserInitialEvent() = _$UserInitialEventImpl;
}

/// @nodoc
abstract class _$$UserGetUsersEventImplCopyWith<$Res> {
  factory _$$UserGetUsersEventImplCopyWith(_$UserGetUsersEventImpl value,
          $Res Function(_$UserGetUsersEventImpl) then) =
      __$$UserGetUsersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserGetUsersEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserGetUsersEventImpl>
    implements _$$UserGetUsersEventImplCopyWith<$Res> {
  __$$UserGetUsersEventImplCopyWithImpl(_$UserGetUsersEventImpl _value,
      $Res Function(_$UserGetUsersEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserGetUsersEventImpl implements UserGetUsersEvent {
  const _$UserGetUsersEventImpl();

  @override
  String toString() {
    return 'UserEvent.getUsers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserGetUsersEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() getUsers,
  }) {
    return getUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? getUsers,
  }) {
    return getUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? getUsers,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitialEvent value) init,
    required TResult Function(UserGetUsersEvent value) getUsers,
  }) {
    return getUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitialEvent value)? init,
    TResult? Function(UserGetUsersEvent value)? getUsers,
  }) {
    return getUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitialEvent value)? init,
    TResult Function(UserGetUsersEvent value)? getUsers,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers(this);
    }
    return orElse();
  }
}

abstract class UserGetUsersEvent implements UserEvent {
  const factory UserGetUsersEvent() = _$UserGetUsersEventImpl;
}
