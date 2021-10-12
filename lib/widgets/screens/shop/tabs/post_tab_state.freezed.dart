// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'post_tab_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostTabStateTearOff {
  const _$PostTabStateTearOff();

  _PostTabState call({List<Post> postList = const [], bool isLoaded = false}) {
    return _PostTabState(
      postList: postList,
      isLoaded: isLoaded,
    );
  }
}

/// @nodoc
const $PostTabState = _$PostTabStateTearOff();

/// @nodoc
mixin _$PostTabState {
  List<Post> get postList => throw _privateConstructorUsedError;
  bool get isLoaded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostTabStateCopyWith<PostTabState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostTabStateCopyWith<$Res> {
  factory $PostTabStateCopyWith(
          PostTabState value, $Res Function(PostTabState) then) =
      _$PostTabStateCopyWithImpl<$Res>;
  $Res call({List<Post> postList, bool isLoaded});
}

/// @nodoc
class _$PostTabStateCopyWithImpl<$Res> implements $PostTabStateCopyWith<$Res> {
  _$PostTabStateCopyWithImpl(this._value, this._then);

  final PostTabState _value;
  // ignore: unused_field
  final $Res Function(PostTabState) _then;

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
abstract class _$PostTabStateCopyWith<$Res>
    implements $PostTabStateCopyWith<$Res> {
  factory _$PostTabStateCopyWith(
          _PostTabState value, $Res Function(_PostTabState) then) =
      __$PostTabStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Post> postList, bool isLoaded});
}

/// @nodoc
class __$PostTabStateCopyWithImpl<$Res> extends _$PostTabStateCopyWithImpl<$Res>
    implements _$PostTabStateCopyWith<$Res> {
  __$PostTabStateCopyWithImpl(
      _PostTabState _value, $Res Function(_PostTabState) _then)
      : super(_value, (v) => _then(v as _PostTabState));

  @override
  _PostTabState get _value => super._value as _PostTabState;

  @override
  $Res call({
    Object? postList = freezed,
    Object? isLoaded = freezed,
  }) {
    return _then(_PostTabState(
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

class _$_PostTabState implements _PostTabState {
  const _$_PostTabState({this.postList = const [], this.isLoaded = false});

  @JsonKey(defaultValue: const [])
  @override
  final List<Post> postList;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoaded;

  @override
  String toString() {
    return 'PostTabState(postList: $postList, isLoaded: $isLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostTabState &&
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
  _$PostTabStateCopyWith<_PostTabState> get copyWith =>
      __$PostTabStateCopyWithImpl<_PostTabState>(this, _$identity);
}

abstract class _PostTabState implements PostTabState {
  const factory _PostTabState({List<Post> postList, bool isLoaded}) =
      _$_PostTabState;

  @override
  List<Post> get postList => throw _privateConstructorUsedError;
  @override
  bool get isLoaded => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PostTabStateCopyWith<_PostTabState> get copyWith =>
      throw _privateConstructorUsedError;
}
