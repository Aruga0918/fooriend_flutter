// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_communities_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeCommunitiesStateTearOff {
  const _$HomeCommunitiesStateTearOff();

  _HomeCommunitiesState call(
      {String selectedCommunityName = "",
      String selectedCommunityIconUrl = ""}) {
    return _HomeCommunitiesState(
      selectedCommunityName: selectedCommunityName,
      selectedCommunityIconUrl: selectedCommunityIconUrl,
    );
  }
}

/// @nodoc
const $HomeCommunitiesState = _$HomeCommunitiesStateTearOff();

/// @nodoc
mixin _$HomeCommunitiesState {
  String get selectedCommunityName => throw _privateConstructorUsedError;
  String get selectedCommunityIconUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeCommunitiesStateCopyWith<HomeCommunitiesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeCommunitiesStateCopyWith<$Res> {
  factory $HomeCommunitiesStateCopyWith(HomeCommunitiesState value,
          $Res Function(HomeCommunitiesState) then) =
      _$HomeCommunitiesStateCopyWithImpl<$Res>;
  $Res call({String selectedCommunityName, String selectedCommunityIconUrl});
}

/// @nodoc
class _$HomeCommunitiesStateCopyWithImpl<$Res>
    implements $HomeCommunitiesStateCopyWith<$Res> {
  _$HomeCommunitiesStateCopyWithImpl(this._value, this._then);

  final HomeCommunitiesState _value;
  // ignore: unused_field
  final $Res Function(HomeCommunitiesState) _then;

  @override
  $Res call({
    Object? selectedCommunityName = freezed,
    Object? selectedCommunityIconUrl = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$HomeCommunitiesStateCopyWith<$Res>
    implements $HomeCommunitiesStateCopyWith<$Res> {
  factory _$HomeCommunitiesStateCopyWith(_HomeCommunitiesState value,
          $Res Function(_HomeCommunitiesState) then) =
      __$HomeCommunitiesStateCopyWithImpl<$Res>;
  @override
  $Res call({String selectedCommunityName, String selectedCommunityIconUrl});
}

/// @nodoc
class __$HomeCommunitiesStateCopyWithImpl<$Res>
    extends _$HomeCommunitiesStateCopyWithImpl<$Res>
    implements _$HomeCommunitiesStateCopyWith<$Res> {
  __$HomeCommunitiesStateCopyWithImpl(
      _HomeCommunitiesState _value, $Res Function(_HomeCommunitiesState) _then)
      : super(_value, (v) => _then(v as _HomeCommunitiesState));

  @override
  _HomeCommunitiesState get _value => super._value as _HomeCommunitiesState;

  @override
  $Res call({
    Object? selectedCommunityName = freezed,
    Object? selectedCommunityIconUrl = freezed,
  }) {
    return _then(_HomeCommunitiesState(
      selectedCommunityName: selectedCommunityName == freezed
          ? _value.selectedCommunityName
          : selectedCommunityName // ignore: cast_nullable_to_non_nullable
              as String,
      selectedCommunityIconUrl: selectedCommunityIconUrl == freezed
          ? _value.selectedCommunityIconUrl
          : selectedCommunityIconUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HomeCommunitiesState implements _HomeCommunitiesState {
  const _$_HomeCommunitiesState(
      {this.selectedCommunityName = "", this.selectedCommunityIconUrl = ""});

  @JsonKey(defaultValue: "")
  @override
  final String selectedCommunityName;
  @JsonKey(defaultValue: "")
  @override
  final String selectedCommunityIconUrl;

  @override
  String toString() {
    return 'HomeCommunitiesState(selectedCommunityName: $selectedCommunityName, selectedCommunityIconUrl: $selectedCommunityIconUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeCommunitiesState &&
            (identical(other.selectedCommunityName, selectedCommunityName) ||
                const DeepCollectionEquality().equals(
                    other.selectedCommunityName, selectedCommunityName)) &&
            (identical(
                    other.selectedCommunityIconUrl, selectedCommunityIconUrl) ||
                const DeepCollectionEquality().equals(
                    other.selectedCommunityIconUrl, selectedCommunityIconUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedCommunityName) ^
      const DeepCollectionEquality().hash(selectedCommunityIconUrl);

  @JsonKey(ignore: true)
  @override
  _$HomeCommunitiesStateCopyWith<_HomeCommunitiesState> get copyWith =>
      __$HomeCommunitiesStateCopyWithImpl<_HomeCommunitiesState>(
          this, _$identity);
}

abstract class _HomeCommunitiesState implements HomeCommunitiesState {
  const factory _HomeCommunitiesState(
      {String selectedCommunityName,
      String selectedCommunityIconUrl}) = _$_HomeCommunitiesState;

  @override
  String get selectedCommunityName => throw _privateConstructorUsedError;
  @override
  String get selectedCommunityIconUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeCommunitiesStateCopyWith<_HomeCommunitiesState> get copyWith =>
      throw _privateConstructorUsedError;
}
