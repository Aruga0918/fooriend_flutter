// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeScreenStateTearOff {
  const _$HomeScreenStateTearOff();

  _HomeScreenState call(
      {String selectedCommunityName = "パブリック",
      String selectedCommunityIconUrl = MockConstant.ACommunityImage,
      List<UserCommunity> belongCommunities = const [],
      bool isLogin = false}) {
    return _HomeScreenState(
      selectedCommunityName: selectedCommunityName,
      selectedCommunityIconUrl: selectedCommunityIconUrl,
      belongCommunities: belongCommunities,
      isLogin: isLogin,
    );
  }
}

/// @nodoc
const $HomeScreenState = _$HomeScreenStateTearOff();

/// @nodoc
mixin _$HomeScreenState {
  String get selectedCommunityName => throw _privateConstructorUsedError;
  String get selectedCommunityIconUrl => throw _privateConstructorUsedError;
  List<UserCommunity> get belongCommunities =>
      throw _privateConstructorUsedError;
  bool get isLogin => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeScreenStateCopyWith<HomeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenStateCopyWith<$Res> {
  factory $HomeScreenStateCopyWith(
          HomeScreenState value, $Res Function(HomeScreenState) then) =
      _$HomeScreenStateCopyWithImpl<$Res>;
  $Res call(
      {String selectedCommunityName,
      String selectedCommunityIconUrl,
      List<UserCommunity> belongCommunities,
      bool isLogin});
}

/// @nodoc
class _$HomeScreenStateCopyWithImpl<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  _$HomeScreenStateCopyWithImpl(this._value, this._then);

  final HomeScreenState _value;
  // ignore: unused_field
  final $Res Function(HomeScreenState) _then;

  @override
  $Res call({
    Object? selectedCommunityName = freezed,
    Object? selectedCommunityIconUrl = freezed,
    Object? belongCommunities = freezed,
    Object? isLogin = freezed,
  }) {
    return _then(_value.copyWith(
      selectedCommunityName: selectedCommunityName == freezed
          ? _value.selectedCommunityName
          : selectedCommunityName // ignore: cast_nullable_to_non_nullable
              as String,
      selectedCommunityIconUrl: selectedCommunityIconUrl == freezed
          ? _value.selectedCommunityIconUrl
          : selectedCommunityIconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      belongCommunities: belongCommunities == freezed
          ? _value.belongCommunities
          : belongCommunities // ignore: cast_nullable_to_non_nullable
              as List<UserCommunity>,
      isLogin: isLogin == freezed
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$HomeScreenStateCopyWith<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  factory _$HomeScreenStateCopyWith(
          _HomeScreenState value, $Res Function(_HomeScreenState) then) =
      __$HomeScreenStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String selectedCommunityName,
      String selectedCommunityIconUrl,
      List<UserCommunity> belongCommunities,
      bool isLogin});
}

/// @nodoc
class __$HomeScreenStateCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res>
    implements _$HomeScreenStateCopyWith<$Res> {
  __$HomeScreenStateCopyWithImpl(
      _HomeScreenState _value, $Res Function(_HomeScreenState) _then)
      : super(_value, (v) => _then(v as _HomeScreenState));

  @override
  _HomeScreenState get _value => super._value as _HomeScreenState;

  @override
  $Res call({
    Object? selectedCommunityName = freezed,
    Object? selectedCommunityIconUrl = freezed,
    Object? belongCommunities = freezed,
    Object? isLogin = freezed,
  }) {
    return _then(_HomeScreenState(
      selectedCommunityName: selectedCommunityName == freezed
          ? _value.selectedCommunityName
          : selectedCommunityName // ignore: cast_nullable_to_non_nullable
              as String,
      selectedCommunityIconUrl: selectedCommunityIconUrl == freezed
          ? _value.selectedCommunityIconUrl
          : selectedCommunityIconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      belongCommunities: belongCommunities == freezed
          ? _value.belongCommunities
          : belongCommunities // ignore: cast_nullable_to_non_nullable
              as List<UserCommunity>,
      isLogin: isLogin == freezed
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeScreenState implements _HomeScreenState {
  const _$_HomeScreenState(
      {this.selectedCommunityName = "パブリック",
      this.selectedCommunityIconUrl = MockConstant.ACommunityImage,
      this.belongCommunities = const [],
      this.isLogin = false});

  @JsonKey(defaultValue: "パブリック")
  @override
  final String selectedCommunityName;
  @JsonKey(defaultValue: MockConstant.ACommunityImage)
  @override
  final String selectedCommunityIconUrl;
  @JsonKey(defaultValue: const [])
  @override
  final List<UserCommunity> belongCommunities;
  @JsonKey(defaultValue: false)
  @override
  final bool isLogin;

  @override
  String toString() {
    return 'HomeScreenState(selectedCommunityName: $selectedCommunityName, selectedCommunityIconUrl: $selectedCommunityIconUrl, belongCommunities: $belongCommunities, isLogin: $isLogin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeScreenState &&
            (identical(other.selectedCommunityName, selectedCommunityName) ||
                const DeepCollectionEquality().equals(
                    other.selectedCommunityName, selectedCommunityName)) &&
            (identical(
                    other.selectedCommunityIconUrl, selectedCommunityIconUrl) ||
                const DeepCollectionEquality().equals(
                    other.selectedCommunityIconUrl,
                    selectedCommunityIconUrl)) &&
            (identical(other.belongCommunities, belongCommunities) ||
                const DeepCollectionEquality()
                    .equals(other.belongCommunities, belongCommunities)) &&
            (identical(other.isLogin, isLogin) ||
                const DeepCollectionEquality().equals(other.isLogin, isLogin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedCommunityName) ^
      const DeepCollectionEquality().hash(selectedCommunityIconUrl) ^
      const DeepCollectionEquality().hash(belongCommunities) ^
      const DeepCollectionEquality().hash(isLogin);

  @JsonKey(ignore: true)
  @override
  _$HomeScreenStateCopyWith<_HomeScreenState> get copyWith =>
      __$HomeScreenStateCopyWithImpl<_HomeScreenState>(this, _$identity);
}

abstract class _HomeScreenState implements HomeScreenState {
  const factory _HomeScreenState(
      {String selectedCommunityName,
      String selectedCommunityIconUrl,
      List<UserCommunity> belongCommunities,
      bool isLogin}) = _$_HomeScreenState;

  @override
  String get selectedCommunityName => throw _privateConstructorUsedError;
  @override
  String get selectedCommunityIconUrl => throw _privateConstructorUsedError;
  @override
  List<UserCommunity> get belongCommunities =>
      throw _privateConstructorUsedError;
  @override
  bool get isLogin => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeScreenStateCopyWith<_HomeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
