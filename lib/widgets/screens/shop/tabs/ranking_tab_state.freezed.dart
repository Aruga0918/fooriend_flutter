// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ranking_tab_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RankingTabStateTearOff {
  const _$RankingTabStateTearOff();

  _RankingTabState call(
      {List<Ranking> rankingList = const [], bool isLoaded = false}) {
    return _RankingTabState(
      rankingList: rankingList,
      isLoaded: isLoaded,
    );
  }
}

/// @nodoc
const $RankingTabState = _$RankingTabStateTearOff();

/// @nodoc
mixin _$RankingTabState {
  List<Ranking> get rankingList => throw _privateConstructorUsedError;
  bool get isLoaded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RankingTabStateCopyWith<RankingTabState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RankingTabStateCopyWith<$Res> {
  factory $RankingTabStateCopyWith(
          RankingTabState value, $Res Function(RankingTabState) then) =
      _$RankingTabStateCopyWithImpl<$Res>;
  $Res call({List<Ranking> rankingList, bool isLoaded});
}

/// @nodoc
class _$RankingTabStateCopyWithImpl<$Res>
    implements $RankingTabStateCopyWith<$Res> {
  _$RankingTabStateCopyWithImpl(this._value, this._then);

  final RankingTabState _value;
  // ignore: unused_field
  final $Res Function(RankingTabState) _then;

  @override
  $Res call({
    Object? rankingList = freezed,
    Object? isLoaded = freezed,
  }) {
    return _then(_value.copyWith(
      rankingList: rankingList == freezed
          ? _value.rankingList
          : rankingList // ignore: cast_nullable_to_non_nullable
              as List<Ranking>,
      isLoaded: isLoaded == freezed
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$RankingTabStateCopyWith<$Res>
    implements $RankingTabStateCopyWith<$Res> {
  factory _$RankingTabStateCopyWith(
          _RankingTabState value, $Res Function(_RankingTabState) then) =
      __$RankingTabStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Ranking> rankingList, bool isLoaded});
}

/// @nodoc
class __$RankingTabStateCopyWithImpl<$Res>
    extends _$RankingTabStateCopyWithImpl<$Res>
    implements _$RankingTabStateCopyWith<$Res> {
  __$RankingTabStateCopyWithImpl(
      _RankingTabState _value, $Res Function(_RankingTabState) _then)
      : super(_value, (v) => _then(v as _RankingTabState));

  @override
  _RankingTabState get _value => super._value as _RankingTabState;

  @override
  $Res call({
    Object? rankingList = freezed,
    Object? isLoaded = freezed,
  }) {
    return _then(_RankingTabState(
      rankingList: rankingList == freezed
          ? _value.rankingList
          : rankingList // ignore: cast_nullable_to_non_nullable
              as List<Ranking>,
      isLoaded: isLoaded == freezed
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RankingTabState implements _RankingTabState {
  const _$_RankingTabState(
      {this.rankingList = const [], this.isLoaded = false});

  @JsonKey(defaultValue: const [])
  @override
  final List<Ranking> rankingList;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoaded;

  @override
  String toString() {
    return 'RankingTabState(rankingList: $rankingList, isLoaded: $isLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RankingTabState &&
            (identical(other.rankingList, rankingList) ||
                const DeepCollectionEquality()
                    .equals(other.rankingList, rankingList)) &&
            (identical(other.isLoaded, isLoaded) ||
                const DeepCollectionEquality()
                    .equals(other.isLoaded, isLoaded)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rankingList) ^
      const DeepCollectionEquality().hash(isLoaded);

  @JsonKey(ignore: true)
  @override
  _$RankingTabStateCopyWith<_RankingTabState> get copyWith =>
      __$RankingTabStateCopyWithImpl<_RankingTabState>(this, _$identity);
}

abstract class _RankingTabState implements RankingTabState {
  const factory _RankingTabState({List<Ranking> rankingList, bool isLoaded}) =
      _$_RankingTabState;

  @override
  List<Ranking> get rankingList => throw _privateConstructorUsedError;
  @override
  bool get isLoaded => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RankingTabStateCopyWith<_RankingTabState> get copyWith =>
      throw _privateConstructorUsedError;
}
