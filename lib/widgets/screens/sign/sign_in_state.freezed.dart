// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sign_in_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInScreenStateTearOff {
  const _$SignInScreenStateTearOff();

  _SignInScreenState call(
      {String userName = "",
      int userId = 0,
      String uid = "",
      bool isObscure = true,
      bool isSignUp = false}) {
    return _SignInScreenState(
      userName: userName,
      userId: userId,
      uid: uid,
      isObscure: isObscure,
      isSignUp: isSignUp,
    );
  }
}

/// @nodoc
const $SignInScreenState = _$SignInScreenStateTearOff();

/// @nodoc
mixin _$SignInScreenState {
  String get userName => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  bool get isObscure => throw _privateConstructorUsedError;
  bool get isSignUp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInScreenStateCopyWith<SignInScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInScreenStateCopyWith<$Res> {
  factory $SignInScreenStateCopyWith(
          SignInScreenState value, $Res Function(SignInScreenState) then) =
      _$SignInScreenStateCopyWithImpl<$Res>;
  $Res call(
      {String userName, int userId, String uid, bool isObscure, bool isSignUp});
}

/// @nodoc
class _$SignInScreenStateCopyWithImpl<$Res>
    implements $SignInScreenStateCopyWith<$Res> {
  _$SignInScreenStateCopyWithImpl(this._value, this._then);

  final SignInScreenState _value;
  // ignore: unused_field
  final $Res Function(SignInScreenState) _then;

  @override
  $Res call({
    Object? userName = freezed,
    Object? userId = freezed,
    Object? uid = freezed,
    Object? isObscure = freezed,
    Object? isSignUp = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      isObscure: isObscure == freezed
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignUp: isSignUp == freezed
          ? _value.isSignUp
          : isSignUp // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SignInScreenStateCopyWith<$Res>
    implements $SignInScreenStateCopyWith<$Res> {
  factory _$SignInScreenStateCopyWith(
          _SignInScreenState value, $Res Function(_SignInScreenState) then) =
      __$SignInScreenStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String userName, int userId, String uid, bool isObscure, bool isSignUp});
}

/// @nodoc
class __$SignInScreenStateCopyWithImpl<$Res>
    extends _$SignInScreenStateCopyWithImpl<$Res>
    implements _$SignInScreenStateCopyWith<$Res> {
  __$SignInScreenStateCopyWithImpl(
      _SignInScreenState _value, $Res Function(_SignInScreenState) _then)
      : super(_value, (v) => _then(v as _SignInScreenState));

  @override
  _SignInScreenState get _value => super._value as _SignInScreenState;

  @override
  $Res call({
    Object? userName = freezed,
    Object? userId = freezed,
    Object? uid = freezed,
    Object? isObscure = freezed,
    Object? isSignUp = freezed,
  }) {
    return _then(_SignInScreenState(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      isObscure: isObscure == freezed
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignUp: isSignUp == freezed
          ? _value.isSignUp
          : isSignUp // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SignInScreenState implements _SignInScreenState {
  const _$_SignInScreenState(
      {this.userName = "",
      this.userId = 0,
      this.uid = "",
      this.isObscure = true,
      this.isSignUp = false});

  @JsonKey(defaultValue: "")
  @override
  final String userName;
  @JsonKey(defaultValue: 0)
  @override
  final int userId;
  @JsonKey(defaultValue: "")
  @override
  final String uid;
  @JsonKey(defaultValue: true)
  @override
  final bool isObscure;
  @JsonKey(defaultValue: false)
  @override
  final bool isSignUp;

  @override
  String toString() {
    return 'SignInScreenState(userName: $userName, userId: $userId, uid: $uid, isObscure: $isObscure, isSignUp: $isSignUp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInScreenState &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.isObscure, isObscure) ||
                const DeepCollectionEquality()
                    .equals(other.isObscure, isObscure)) &&
            (identical(other.isSignUp, isSignUp) ||
                const DeepCollectionEquality()
                    .equals(other.isSignUp, isSignUp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(isObscure) ^
      const DeepCollectionEquality().hash(isSignUp);

  @JsonKey(ignore: true)
  @override
  _$SignInScreenStateCopyWith<_SignInScreenState> get copyWith =>
      __$SignInScreenStateCopyWithImpl<_SignInScreenState>(this, _$identity);
}

abstract class _SignInScreenState implements SignInScreenState {
  const factory _SignInScreenState(
      {String userName,
      int userId,
      String uid,
      bool isObscure,
      bool isSignUp}) = _$_SignInScreenState;

  @override
  String get userName => throw _privateConstructorUsedError;
  @override
  int get userId => throw _privateConstructorUsedError;
  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  bool get isObscure => throw _privateConstructorUsedError;
  @override
  bool get isSignUp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignInScreenStateCopyWith<_SignInScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
