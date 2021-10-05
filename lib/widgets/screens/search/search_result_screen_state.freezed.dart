// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_result_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchResultScreenStateTearOff {
  const _$SearchResultScreenStateTearOff();

  _SearchResultScreenState call(
      {List<CategoryShop> categoryShops = const [], bool isLoaded = false}) {
    return _SearchResultScreenState(
      categoryShops: categoryShops,
      isLoaded: isLoaded,
    );
  }
}

/// @nodoc
const $SearchResultScreenState = _$SearchResultScreenStateTearOff();

/// @nodoc
mixin _$SearchResultScreenState {
  List<CategoryShop> get categoryShops => throw _privateConstructorUsedError;
  bool get isLoaded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchResultScreenStateCopyWith<SearchResultScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultScreenStateCopyWith<$Res> {
  factory $SearchResultScreenStateCopyWith(SearchResultScreenState value,
          $Res Function(SearchResultScreenState) then) =
      _$SearchResultScreenStateCopyWithImpl<$Res>;
  $Res call({List<CategoryShop> categoryShops, bool isLoaded});
}

/// @nodoc
class _$SearchResultScreenStateCopyWithImpl<$Res>
    implements $SearchResultScreenStateCopyWith<$Res> {
  _$SearchResultScreenStateCopyWithImpl(this._value, this._then);

  final SearchResultScreenState _value;
  // ignore: unused_field
  final $Res Function(SearchResultScreenState) _then;

  @override
  $Res call({
    Object? categoryShops = freezed,
    Object? isLoaded = freezed,
  }) {
    return _then(_value.copyWith(
      categoryShops: categoryShops == freezed
          ? _value.categoryShops
          : categoryShops // ignore: cast_nullable_to_non_nullable
              as List<CategoryShop>,
      isLoaded: isLoaded == freezed
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SearchResultScreenStateCopyWith<$Res>
    implements $SearchResultScreenStateCopyWith<$Res> {
  factory _$SearchResultScreenStateCopyWith(_SearchResultScreenState value,
          $Res Function(_SearchResultScreenState) then) =
      __$SearchResultScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({List<CategoryShop> categoryShops, bool isLoaded});
}

/// @nodoc
class __$SearchResultScreenStateCopyWithImpl<$Res>
    extends _$SearchResultScreenStateCopyWithImpl<$Res>
    implements _$SearchResultScreenStateCopyWith<$Res> {
  __$SearchResultScreenStateCopyWithImpl(_SearchResultScreenState _value,
      $Res Function(_SearchResultScreenState) _then)
      : super(_value, (v) => _then(v as _SearchResultScreenState));

  @override
  _SearchResultScreenState get _value =>
      super._value as _SearchResultScreenState;

  @override
  $Res call({
    Object? categoryShops = freezed,
    Object? isLoaded = freezed,
  }) {
    return _then(_SearchResultScreenState(
      categoryShops: categoryShops == freezed
          ? _value.categoryShops
          : categoryShops // ignore: cast_nullable_to_non_nullable
              as List<CategoryShop>,
      isLoaded: isLoaded == freezed
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SearchResultScreenState implements _SearchResultScreenState {
  const _$_SearchResultScreenState(
      {this.categoryShops = const [], this.isLoaded = false});

  @JsonKey(defaultValue: const [])
  @override
  final List<CategoryShop> categoryShops;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoaded;

  @override
  String toString() {
    return 'SearchResultScreenState(categoryShops: $categoryShops, isLoaded: $isLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchResultScreenState &&
            (identical(other.categoryShops, categoryShops) ||
                const DeepCollectionEquality()
                    .equals(other.categoryShops, categoryShops)) &&
            (identical(other.isLoaded, isLoaded) ||
                const DeepCollectionEquality()
                    .equals(other.isLoaded, isLoaded)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categoryShops) ^
      const DeepCollectionEquality().hash(isLoaded);

  @JsonKey(ignore: true)
  @override
  _$SearchResultScreenStateCopyWith<_SearchResultScreenState> get copyWith =>
      __$SearchResultScreenStateCopyWithImpl<_SearchResultScreenState>(
          this, _$identity);
}

abstract class _SearchResultScreenState implements SearchResultScreenState {
  const factory _SearchResultScreenState(
      {List<CategoryShop> categoryShops,
      bool isLoaded}) = _$_SearchResultScreenState;

  @override
  List<CategoryShop> get categoryShops => throw _privateConstructorUsedError;
  @override
  bool get isLoaded => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchResultScreenStateCopyWith<_SearchResultScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
