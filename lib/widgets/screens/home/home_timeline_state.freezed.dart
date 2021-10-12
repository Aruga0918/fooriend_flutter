// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_timeline_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeTimeLineStateTearOff {
  const _$HomeTimeLineStateTearOff();

  _HomeTimeLineState call(
      {List<Post> postList = const [], bool isLoaded = false}) {
    return _HomeTimeLineState(
      postList: postList,
      isLoaded: isLoaded,
    );
  }
}

/// @nodoc
const $HomeTimeLineState = _$HomeTimeLineStateTearOff();

/// @nodoc
mixin _$HomeTimeLineState {
  List<Post> get postList => throw _privateConstructorUsedError;
  bool get isLoaded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeTimeLineStateCopyWith<HomeTimeLineState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeTimeLineStateCopyWith<$Res> {
  factory $HomeTimeLineStateCopyWith(
          HomeTimeLineState value, $Res Function(HomeTimeLineState) then) =
      _$HomeTimeLineStateCopyWithImpl<$Res>;
  $Res call({List<Post> postList, bool isLoaded});
}

/// @nodoc
class _$HomeTimeLineStateCopyWithImpl<$Res>
    implements $HomeTimeLineStateCopyWith<$Res> {
  _$HomeTimeLineStateCopyWithImpl(this._value, this._then);

  final HomeTimeLineState _value;
  // ignore: unused_field
  final $Res Function(HomeTimeLineState) _then;

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
abstract class _$HomeTimeLineStateCopyWith<$Res>
    implements $HomeTimeLineStateCopyWith<$Res> {
  factory _$HomeTimeLineStateCopyWith(
          _HomeTimeLineState value, $Res Function(_HomeTimeLineState) then) =
      __$HomeTimeLineStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Post> postList, bool isLoaded});
}

/// @nodoc
class __$HomeTimeLineStateCopyWithImpl<$Res>
    extends _$HomeTimeLineStateCopyWithImpl<$Res>
    implements _$HomeTimeLineStateCopyWith<$Res> {
  __$HomeTimeLineStateCopyWithImpl(
      _HomeTimeLineState _value, $Res Function(_HomeTimeLineState) _then)
      : super(_value, (v) => _then(v as _HomeTimeLineState));

  @override
  _HomeTimeLineState get _value => super._value as _HomeTimeLineState;

  @override
  $Res call({
    Object? postList = freezed,
    Object? isLoaded = freezed,
  }) {
    return _then(_HomeTimeLineState(
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

class _$_HomeTimeLineState implements _HomeTimeLineState {
  const _$_HomeTimeLineState({this.postList = const [], this.isLoaded = false});

  @JsonKey(defaultValue: const [])
  @override
  final List<Post> postList;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoaded;

  @override
  String toString() {
    return 'HomeTimeLineState(postList: $postList, isLoaded: $isLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeTimeLineState &&
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
  _$HomeTimeLineStateCopyWith<_HomeTimeLineState> get copyWith =>
      __$HomeTimeLineStateCopyWithImpl<_HomeTimeLineState>(this, _$identity);
}

abstract class _HomeTimeLineState implements HomeTimeLineState {
  const factory _HomeTimeLineState({List<Post> postList, bool isLoaded}) =
      _$_HomeTimeLineState;

  @override
  List<Post> get postList => throw _privateConstructorUsedError;
  @override
  bool get isLoaded => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeTimeLineStateCopyWith<_HomeTimeLineState> get copyWith =>
      throw _privateConstructorUsedError;
}
