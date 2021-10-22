// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'community_editor_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommunityEditorStateTearOff {
  const _$CommunityEditorStateTearOff();

  _CommunityEditorState call(
      {List<RoughUser> inviteList = const [],
      List<RoughUser> allUserList = const [],
      List<String> nameList = const []}) {
    return _CommunityEditorState(
      inviteList: inviteList,
      allUserList: allUserList,
      nameList: nameList,
    );
  }
}

/// @nodoc
const $CommunityEditorState = _$CommunityEditorStateTearOff();

/// @nodoc
mixin _$CommunityEditorState {
  List<RoughUser> get inviteList => throw _privateConstructorUsedError;
  List<RoughUser> get allUserList => throw _privateConstructorUsedError;
  List<String> get nameList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommunityEditorStateCopyWith<CommunityEditorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityEditorStateCopyWith<$Res> {
  factory $CommunityEditorStateCopyWith(CommunityEditorState value,
          $Res Function(CommunityEditorState) then) =
      _$CommunityEditorStateCopyWithImpl<$Res>;
  $Res call(
      {List<RoughUser> inviteList,
      List<RoughUser> allUserList,
      List<String> nameList});
}

/// @nodoc
class _$CommunityEditorStateCopyWithImpl<$Res>
    implements $CommunityEditorStateCopyWith<$Res> {
  _$CommunityEditorStateCopyWithImpl(this._value, this._then);

  final CommunityEditorState _value;
  // ignore: unused_field
  final $Res Function(CommunityEditorState) _then;

  @override
  $Res call({
    Object? inviteList = freezed,
    Object? allUserList = freezed,
    Object? nameList = freezed,
  }) {
    return _then(_value.copyWith(
      inviteList: inviteList == freezed
          ? _value.inviteList
          : inviteList // ignore: cast_nullable_to_non_nullable
              as List<RoughUser>,
      allUserList: allUserList == freezed
          ? _value.allUserList
          : allUserList // ignore: cast_nullable_to_non_nullable
              as List<RoughUser>,
      nameList: nameList == freezed
          ? _value.nameList
          : nameList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$CommunityEditorStateCopyWith<$Res>
    implements $CommunityEditorStateCopyWith<$Res> {
  factory _$CommunityEditorStateCopyWith(_CommunityEditorState value,
          $Res Function(_CommunityEditorState) then) =
      __$CommunityEditorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<RoughUser> inviteList,
      List<RoughUser> allUserList,
      List<String> nameList});
}

/// @nodoc
class __$CommunityEditorStateCopyWithImpl<$Res>
    extends _$CommunityEditorStateCopyWithImpl<$Res>
    implements _$CommunityEditorStateCopyWith<$Res> {
  __$CommunityEditorStateCopyWithImpl(
      _CommunityEditorState _value, $Res Function(_CommunityEditorState) _then)
      : super(_value, (v) => _then(v as _CommunityEditorState));

  @override
  _CommunityEditorState get _value => super._value as _CommunityEditorState;

  @override
  $Res call({
    Object? inviteList = freezed,
    Object? allUserList = freezed,
    Object? nameList = freezed,
  }) {
    return _then(_CommunityEditorState(
      inviteList: inviteList == freezed
          ? _value.inviteList
          : inviteList // ignore: cast_nullable_to_non_nullable
              as List<RoughUser>,
      allUserList: allUserList == freezed
          ? _value.allUserList
          : allUserList // ignore: cast_nullable_to_non_nullable
              as List<RoughUser>,
      nameList: nameList == freezed
          ? _value.nameList
          : nameList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_CommunityEditorState implements _CommunityEditorState {
  const _$_CommunityEditorState(
      {this.inviteList = const [],
      this.allUserList = const [],
      this.nameList = const []});

  @JsonKey(defaultValue: const [])
  @override
  final List<RoughUser> inviteList;
  @JsonKey(defaultValue: const [])
  @override
  final List<RoughUser> allUserList;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> nameList;

  @override
  String toString() {
    return 'CommunityEditorState(inviteList: $inviteList, allUserList: $allUserList, nameList: $nameList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommunityEditorState &&
            (identical(other.inviteList, inviteList) ||
                const DeepCollectionEquality()
                    .equals(other.inviteList, inviteList)) &&
            (identical(other.allUserList, allUserList) ||
                const DeepCollectionEquality()
                    .equals(other.allUserList, allUserList)) &&
            (identical(other.nameList, nameList) ||
                const DeepCollectionEquality()
                    .equals(other.nameList, nameList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(inviteList) ^
      const DeepCollectionEquality().hash(allUserList) ^
      const DeepCollectionEquality().hash(nameList);

  @JsonKey(ignore: true)
  @override
  _$CommunityEditorStateCopyWith<_CommunityEditorState> get copyWith =>
      __$CommunityEditorStateCopyWithImpl<_CommunityEditorState>(
          this, _$identity);
}

abstract class _CommunityEditorState implements CommunityEditorState {
  const factory _CommunityEditorState(
      {List<RoughUser> inviteList,
      List<RoughUser> allUserList,
      List<String> nameList}) = _$_CommunityEditorState;

  @override
  List<RoughUser> get inviteList => throw _privateConstructorUsedError;
  @override
  List<RoughUser> get allUserList => throw _privateConstructorUsedError;
  @override
  List<String> get nameList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommunityEditorStateCopyWith<_CommunityEditorState> get copyWith =>
      throw _privateConstructorUsedError;
}
