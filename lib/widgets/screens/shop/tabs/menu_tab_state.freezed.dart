// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'menu_tab_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MenuTabStateTearOff {
  const _$MenuTabStateTearOff();

  _MenuTabState call(
      {List<dynamic> menuList = const [], bool isLoaded = false}) {
    return _MenuTabState(
      menuList: menuList,
      isLoaded: isLoaded,
    );
  }
}

/// @nodoc
const $MenuTabState = _$MenuTabStateTearOff();

/// @nodoc
mixin _$MenuTabState {
  List<dynamic> get menuList => throw _privateConstructorUsedError;
  bool get isLoaded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuTabStateCopyWith<MenuTabState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuTabStateCopyWith<$Res> {
  factory $MenuTabStateCopyWith(
          MenuTabState value, $Res Function(MenuTabState) then) =
      _$MenuTabStateCopyWithImpl<$Res>;
  $Res call({List<dynamic> menuList, bool isLoaded});
}

/// @nodoc
class _$MenuTabStateCopyWithImpl<$Res> implements $MenuTabStateCopyWith<$Res> {
  _$MenuTabStateCopyWithImpl(this._value, this._then);

  final MenuTabState _value;
  // ignore: unused_field
  final $Res Function(MenuTabState) _then;

  @override
  $Res call({
    Object? menuList = freezed,
    Object? isLoaded = freezed,
  }) {
    return _then(_value.copyWith(
      menuList: menuList == freezed
          ? _value.menuList
          : menuList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      isLoaded: isLoaded == freezed
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$MenuTabStateCopyWith<$Res>
    implements $MenuTabStateCopyWith<$Res> {
  factory _$MenuTabStateCopyWith(
          _MenuTabState value, $Res Function(_MenuTabState) then) =
      __$MenuTabStateCopyWithImpl<$Res>;
  @override
  $Res call({List<dynamic> menuList, bool isLoaded});
}

/// @nodoc
class __$MenuTabStateCopyWithImpl<$Res> extends _$MenuTabStateCopyWithImpl<$Res>
    implements _$MenuTabStateCopyWith<$Res> {
  __$MenuTabStateCopyWithImpl(
      _MenuTabState _value, $Res Function(_MenuTabState) _then)
      : super(_value, (v) => _then(v as _MenuTabState));

  @override
  _MenuTabState get _value => super._value as _MenuTabState;

  @override
  $Res call({
    Object? menuList = freezed,
    Object? isLoaded = freezed,
  }) {
    return _then(_MenuTabState(
      menuList: menuList == freezed
          ? _value.menuList
          : menuList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      isLoaded: isLoaded == freezed
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MenuTabState implements _MenuTabState {
  const _$_MenuTabState({this.menuList = const [], this.isLoaded = false});

  @JsonKey(defaultValue: const [])
  @override
  final List<dynamic> menuList;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoaded;

  @override
  String toString() {
    return 'MenuTabState(menuList: $menuList, isLoaded: $isLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MenuTabState &&
            (identical(other.menuList, menuList) ||
                const DeepCollectionEquality()
                    .equals(other.menuList, menuList)) &&
            (identical(other.isLoaded, isLoaded) ||
                const DeepCollectionEquality()
                    .equals(other.isLoaded, isLoaded)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(menuList) ^
      const DeepCollectionEquality().hash(isLoaded);

  @JsonKey(ignore: true)
  @override
  _$MenuTabStateCopyWith<_MenuTabState> get copyWith =>
      __$MenuTabStateCopyWithImpl<_MenuTabState>(this, _$identity);
}

abstract class _MenuTabState implements MenuTabState {
  const factory _MenuTabState({List<dynamic> menuList, bool isLoaded}) =
      _$_MenuTabState;

  @override
  List<dynamic> get menuList => throw _privateConstructorUsedError;
  @override
  bool get isLoaded => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MenuTabStateCopyWith<_MenuTabState> get copyWith =>
      throw _privateConstructorUsedError;
}
