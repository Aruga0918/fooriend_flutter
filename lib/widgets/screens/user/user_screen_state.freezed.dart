// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserScreenStateTearOff {
  const _$UserScreenStateTearOff();

  _UserScreenState call({bool isLogin = false}) {
    return _UserScreenState(
      isLogin: isLogin,
    );
  }
}

/// @nodoc
const $UserScreenState = _$UserScreenStateTearOff();

/// @nodoc
mixin _$UserScreenState {
  bool get isLogin => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserScreenStateCopyWith<UserScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserScreenStateCopyWith<$Res> {
  factory $UserScreenStateCopyWith(
          UserScreenState value, $Res Function(UserScreenState) then) =
      _$UserScreenStateCopyWithImpl<$Res>;
  $Res call({bool isLogin});
}

/// @nodoc
class _$UserScreenStateCopyWithImpl<$Res>
    implements $UserScreenStateCopyWith<$Res> {
  _$UserScreenStateCopyWithImpl(this._value, this._then);

  final UserScreenState _value;
  // ignore: unused_field
  final $Res Function(UserScreenState) _then;

  @override
  $Res call({
    Object? isLogin = freezed,
  }) {
    return _then(_value.copyWith(
      isLogin: isLogin == freezed
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$UserScreenStateCopyWith<$Res>
    implements $UserScreenStateCopyWith<$Res> {
  factory _$UserScreenStateCopyWith(
          _UserScreenState value, $Res Function(_UserScreenState) then) =
      __$UserScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLogin});
}

/// @nodoc
class __$UserScreenStateCopyWithImpl<$Res>
    extends _$UserScreenStateCopyWithImpl<$Res>
    implements _$UserScreenStateCopyWith<$Res> {
  __$UserScreenStateCopyWithImpl(
      _UserScreenState _value, $Res Function(_UserScreenState) _then)
      : super(_value, (v) => _then(v as _UserScreenState));

  @override
  _UserScreenState get _value => super._value as _UserScreenState;

  @override
  $Res call({
    Object? isLogin = freezed,
  }) {
    return _then(_UserScreenState(
      isLogin: isLogin == freezed
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UserScreenState implements _UserScreenState {
  const _$_UserScreenState({this.isLogin = false});

  @JsonKey(defaultValue: false)
  @override
  final bool isLogin;

  @override
  String toString() {
    return 'UserScreenState(isLogin: $isLogin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserScreenState &&
            (identical(other.isLogin, isLogin) ||
                const DeepCollectionEquality().equals(other.isLogin, isLogin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isLogin);

  @JsonKey(ignore: true)
  @override
  _$UserScreenStateCopyWith<_UserScreenState> get copyWith =>
      __$UserScreenStateCopyWithImpl<_UserScreenState>(this, _$identity);
}

abstract class _UserScreenState implements UserScreenState {
  const factory _UserScreenState({bool isLogin}) = _$_UserScreenState;

  @override
  bool get isLogin => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserScreenStateCopyWith<_UserScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
