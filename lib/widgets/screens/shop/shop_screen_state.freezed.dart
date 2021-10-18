// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'shop_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShopScreenStateTearOff {
  const _$ShopScreenStateTearOff();

  _ShopScreenState call({Shop shopData = Shop.mock}) {
    return _ShopScreenState(
      shopData: shopData,
    );
  }
}

/// @nodoc
const $ShopScreenState = _$ShopScreenStateTearOff();

/// @nodoc
mixin _$ShopScreenState {
  Shop get shopData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopScreenStateCopyWith<ShopScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopScreenStateCopyWith<$Res> {
  factory $ShopScreenStateCopyWith(
          ShopScreenState value, $Res Function(ShopScreenState) then) =
      _$ShopScreenStateCopyWithImpl<$Res>;
  $Res call({Shop shopData});
}

/// @nodoc
class _$ShopScreenStateCopyWithImpl<$Res>
    implements $ShopScreenStateCopyWith<$Res> {
  _$ShopScreenStateCopyWithImpl(this._value, this._then);

  final ShopScreenState _value;
  // ignore: unused_field
  final $Res Function(ShopScreenState) _then;

  @override
  $Res call({
    Object? shopData = freezed,
  }) {
    return _then(_value.copyWith(
      shopData: shopData == freezed
          ? _value.shopData
          : shopData // ignore: cast_nullable_to_non_nullable
              as Shop,
    ));
  }
}

/// @nodoc
abstract class _$ShopScreenStateCopyWith<$Res>
    implements $ShopScreenStateCopyWith<$Res> {
  factory _$ShopScreenStateCopyWith(
          _ShopScreenState value, $Res Function(_ShopScreenState) then) =
      __$ShopScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({Shop shopData});
}

/// @nodoc
class __$ShopScreenStateCopyWithImpl<$Res>
    extends _$ShopScreenStateCopyWithImpl<$Res>
    implements _$ShopScreenStateCopyWith<$Res> {
  __$ShopScreenStateCopyWithImpl(
      _ShopScreenState _value, $Res Function(_ShopScreenState) _then)
      : super(_value, (v) => _then(v as _ShopScreenState));

  @override
  _ShopScreenState get _value => super._value as _ShopScreenState;

  @override
  $Res call({
    Object? shopData = freezed,
  }) {
    return _then(_ShopScreenState(
      shopData: shopData == freezed
          ? _value.shopData
          : shopData // ignore: cast_nullable_to_non_nullable
              as Shop,
    ));
  }
}

/// @nodoc

class _$_ShopScreenState implements _ShopScreenState {
  const _$_ShopScreenState({this.shopData = Shop.mock});

  @JsonKey(defaultValue: Shop.mock)
  @override
  final Shop shopData;

  @override
  String toString() {
    return 'ShopScreenState(shopData: $shopData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShopScreenState &&
            (identical(other.shopData, shopData) ||
                const DeepCollectionEquality()
                    .equals(other.shopData, shopData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(shopData);

  @JsonKey(ignore: true)
  @override
  _$ShopScreenStateCopyWith<_ShopScreenState> get copyWith =>
      __$ShopScreenStateCopyWithImpl<_ShopScreenState>(this, _$identity);
}

abstract class _ShopScreenState implements ShopScreenState {
  const factory _ShopScreenState({Shop shopData}) = _$_ShopScreenState;

  @override
  Shop get shopData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShopScreenStateCopyWith<_ShopScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
