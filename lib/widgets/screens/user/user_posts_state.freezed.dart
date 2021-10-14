// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_posts_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserPostsStateTearOff {
  const _$UserPostsStateTearOff();

  _UserPostsState call(
      {List<Post> postList = const [], bool isLoaded = false}) {
    return _UserPostsState(
      postList: postList,
      isLoaded: isLoaded,
    );
  }
}

/// @nodoc
const $UserPostsState = _$UserPostsStateTearOff();

/// @nodoc
mixin _$UserPostsState {
  List<Post> get postList => throw _privateConstructorUsedError;
  bool get isLoaded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserPostsStateCopyWith<UserPostsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPostsStateCopyWith<$Res> {
  factory $UserPostsStateCopyWith(
          UserPostsState value, $Res Function(UserPostsState) then) =
      _$UserPostsStateCopyWithImpl<$Res>;
  $Res call({List<Post> postList, bool isLoaded});
}

/// @nodoc
class _$UserPostsStateCopyWithImpl<$Res>
    implements $UserPostsStateCopyWith<$Res> {
  _$UserPostsStateCopyWithImpl(this._value, this._then);

  final UserPostsState _value;
  // ignore: unused_field
  final $Res Function(UserPostsState) _then;

  @override
  $Res call({
    Object? postList = freezed,
    Object? isLoaded = freezed,
  }) {
    return _then(_value.copyWith(
      postList: postList == freezed
          ? _value.postList
          : postList // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      isLoaded: isLoaded == freezed
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$UserPostsStateCopyWith<$Res>
    implements $UserPostsStateCopyWith<$Res> {
  factory _$UserPostsStateCopyWith(
          _UserPostsState value, $Res Function(_UserPostsState) then) =
      __$UserPostsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Post> postList, bool isLoaded});
}

/// @nodoc
class __$UserPostsStateCopyWithImpl<$Res>
    extends _$UserPostsStateCopyWithImpl<$Res>
    implements _$UserPostsStateCopyWith<$Res> {
  __$UserPostsStateCopyWithImpl(
      _UserPostsState _value, $Res Function(_UserPostsState) _then)
      : super(_value, (v) => _then(v as _UserPostsState));

  @override
  _UserPostsState get _value => super._value as _UserPostsState;

  @override
  $Res call({
    Object? postList = freezed,
    Object? isLoaded = freezed,
  }) {
    return _then(_UserPostsState(
      postList: postList == freezed
          ? _value.postList
          : postList // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      isLoaded: isLoaded == freezed
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UserPostsState implements _UserPostsState {
  const _$_UserPostsState({this.postList = const [], this.isLoaded = false});

  @JsonKey(defaultValue: const [])
  @override
  final List<Post> postList;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoaded;

  @override
  String toString() {
    return 'UserPostsState(postList: $postList, isLoaded: $isLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserPostsState &&
            (identical(other.postList, postList) ||
                const DeepCollectionEquality()
                    .equals(other.postList, postList)) &&
            (identical(other.isLoaded, isLoaded) ||
                const DeepCollectionEquality()
                    .equals(other.isLoaded, isLoaded)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postList) ^
      const DeepCollectionEquality().hash(isLoaded);

  @JsonKey(ignore: true)
  @override
  _$UserPostsStateCopyWith<_UserPostsState> get copyWith =>
      __$UserPostsStateCopyWithImpl<_UserPostsState>(this, _$identity);
}

abstract class _UserPostsState implements UserPostsState {
  const factory _UserPostsState({List<Post> postList, bool isLoaded}) =
      _$_UserPostsState;

  @override
  List<Post> get postList => throw _privateConstructorUsedError;
  @override
  bool get isLoaded => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserPostsStateCopyWith<_UserPostsState> get copyWith =>
      throw _privateConstructorUsedError;
}
