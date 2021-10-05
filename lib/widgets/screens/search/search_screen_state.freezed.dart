// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchScreenStateTearOff {
  const _$SearchScreenStateTearOff();

  _SearchScreenState call(
      {List<String> categoryList = const [], bool isLoaded = false}) {
    return _SearchScreenState(
      categoryList: categoryList,
      isLoaded: isLoaded,
    );
  }
}

/// @nodoc
const $SearchScreenState = _$SearchScreenStateTearOff();

/// @nodoc
mixin _$SearchScreenState {
  List<String> get categoryList => throw _privateConstructorUsedError;
  bool get isLoaded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchScreenStateCopyWith<SearchScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchScreenStateCopyWith<$Res> {
  factory $SearchScreenStateCopyWith(
          SearchScreenState value, $Res Function(SearchScreenState) then) =
      _$SearchScreenStateCopyWithImpl<$Res>;
  $Res call({List<String> categoryList, bool isLoaded});
}

/// @nodoc
class _$SearchScreenStateCopyWithImpl<$Res>
    implements $SearchScreenStateCopyWith<$Res> {
  _$SearchScreenStateCopyWithImpl(this._value, this._then);

  final SearchScreenState _value;
  // ignore: unused_field
  final $Res Function(SearchScreenState) _then;

  @override
  $Res call({
    Object? categoryList = freezed,
    Object? isLoaded = freezed,
  }) {
    return _then(_value.copyWith(
      categoryList: categoryList == freezed
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isLoaded: isLoaded == freezed
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SearchScreenStateCopyWith<$Res>
    implements $SearchScreenStateCopyWith<$Res> {
  factory _$SearchScreenStateCopyWith(
          _SearchScreenState value, $Res Function(_SearchScreenState) then) =
      __$SearchScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({List<String> categoryList, bool isLoaded});
}

/// @nodoc
class __$SearchScreenStateCopyWithImpl<$Res>
    extends _$SearchScreenStateCopyWithImpl<$Res>
    implements _$SearchScreenStateCopyWith<$Res> {
  __$SearchScreenStateCopyWithImpl(
      _SearchScreenState _value, $Res Function(_SearchScreenState) _then)
      : super(_value, (v) => _then(v as _SearchScreenState));

  @override
  _SearchScreenState get _value => super._value as _SearchScreenState;

  @override
  $Res call({
    Object? categoryList = freezed,
    Object? isLoaded = freezed,
  }) {
    return _then(_SearchScreenState(
      categoryList: categoryList == freezed
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isLoaded: isLoaded == freezed
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SearchScreenState implements _SearchScreenState {
  const _$_SearchScreenState(
      {this.categoryList = const [], this.isLoaded = false});

  @JsonKey(defaultValue: const [])
  @override
  final List<String> categoryList;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoaded;

  @override
  String toString() {
    return 'SearchScreenState(categoryList: $categoryList, isLoaded: $isLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchScreenState &&
            (identical(other.categoryList, categoryList) ||
                const DeepCollectionEquality()
                    .equals(other.categoryList, categoryList)) &&
            (identical(other.isLoaded, isLoaded) ||
                const DeepCollectionEquality()
                    .equals(other.isLoaded, isLoaded)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categoryList) ^
      const DeepCollectionEquality().hash(isLoaded);

  @JsonKey(ignore: true)
  @override
  _$SearchScreenStateCopyWith<_SearchScreenState> get copyWith =>
      __$SearchScreenStateCopyWithImpl<_SearchScreenState>(this, _$identity);
}

abstract class _SearchScreenState implements SearchScreenState {
  const factory _SearchScreenState({List<String> categoryList, bool isLoaded}) =
      _$_SearchScreenState;

  @override
  List<String> get categoryList => throw _privateConstructorUsedError;
  @override
  bool get isLoaded => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchScreenStateCopyWith<_SearchScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
