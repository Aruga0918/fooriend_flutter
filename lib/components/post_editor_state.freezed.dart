// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'post_editor_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostEditorStateTearOff {
  const _$PostEditorStateTearOff();

  _PostEditorState call(
      {List<Category> categoryList = const [],
      List<CategoryShop> shopList = const [],
      List<Menu> menuList = const [],
      Category selectedCategory = Category.mock,
      CategoryShop selectedShop = CategoryShop.mock,
      List<Menu?> selectedMenus = const []}) {
    return _PostEditorState(
      categoryList: categoryList,
      shopList: shopList,
      menuList: menuList,
      selectedCategory: selectedCategory,
      selectedShop: selectedShop,
      selectedMenus: selectedMenus,
    );
  }
}

/// @nodoc
const $PostEditorState = _$PostEditorStateTearOff();

/// @nodoc
mixin _$PostEditorState {
  List<Category> get categoryList => throw _privateConstructorUsedError;
  List<CategoryShop> get shopList => throw _privateConstructorUsedError;
  List<Menu> get menuList => throw _privateConstructorUsedError;
  Category get selectedCategory => throw _privateConstructorUsedError;
  CategoryShop get selectedShop => throw _privateConstructorUsedError;
  List<Menu?> get selectedMenus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostEditorStateCopyWith<PostEditorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostEditorStateCopyWith<$Res> {
  factory $PostEditorStateCopyWith(
          PostEditorState value, $Res Function(PostEditorState) then) =
      _$PostEditorStateCopyWithImpl<$Res>;
  $Res call(
      {List<Category> categoryList,
      List<CategoryShop> shopList,
      List<Menu> menuList,
      Category selectedCategory,
      CategoryShop selectedShop,
      List<Menu?> selectedMenus});
}

/// @nodoc
class _$PostEditorStateCopyWithImpl<$Res>
    implements $PostEditorStateCopyWith<$Res> {
  _$PostEditorStateCopyWithImpl(this._value, this._then);

  final PostEditorState _value;
  // ignore: unused_field
  final $Res Function(PostEditorState) _then;

  @override
  $Res call({
    Object? categoryList = freezed,
    Object? shopList = freezed,
    Object? menuList = freezed,
    Object? selectedCategory = freezed,
    Object? selectedShop = freezed,
    Object? selectedMenus = freezed,
  }) {
    return _then(_value.copyWith(
      categoryList: categoryList == freezed
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      shopList: shopList == freezed
          ? _value.shopList
          : shopList // ignore: cast_nullable_to_non_nullable
              as List<CategoryShop>,
      menuList: menuList == freezed
          ? _value.menuList
          : menuList // ignore: cast_nullable_to_non_nullable
              as List<Menu>,
      selectedCategory: selectedCategory == freezed
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as Category,
      selectedShop: selectedShop == freezed
          ? _value.selectedShop
          : selectedShop // ignore: cast_nullable_to_non_nullable
              as CategoryShop,
      selectedMenus: selectedMenus == freezed
          ? _value.selectedMenus
          : selectedMenus // ignore: cast_nullable_to_non_nullable
              as List<Menu?>,
    ));
  }
}

/// @nodoc
abstract class _$PostEditorStateCopyWith<$Res>
    implements $PostEditorStateCopyWith<$Res> {
  factory _$PostEditorStateCopyWith(
          _PostEditorState value, $Res Function(_PostEditorState) then) =
      __$PostEditorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Category> categoryList,
      List<CategoryShop> shopList,
      List<Menu> menuList,
      Category selectedCategory,
      CategoryShop selectedShop,
      List<Menu?> selectedMenus});
}

/// @nodoc
class __$PostEditorStateCopyWithImpl<$Res>
    extends _$PostEditorStateCopyWithImpl<$Res>
    implements _$PostEditorStateCopyWith<$Res> {
  __$PostEditorStateCopyWithImpl(
      _PostEditorState _value, $Res Function(_PostEditorState) _then)
      : super(_value, (v) => _then(v as _PostEditorState));

  @override
  _PostEditorState get _value => super._value as _PostEditorState;

  @override
  $Res call({
    Object? categoryList = freezed,
    Object? shopList = freezed,
    Object? menuList = freezed,
    Object? selectedCategory = freezed,
    Object? selectedShop = freezed,
    Object? selectedMenus = freezed,
  }) {
    return _then(_PostEditorState(
      categoryList: categoryList == freezed
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      shopList: shopList == freezed
          ? _value.shopList
          : shopList // ignore: cast_nullable_to_non_nullable
              as List<CategoryShop>,
      menuList: menuList == freezed
          ? _value.menuList
          : menuList // ignore: cast_nullable_to_non_nullable
              as List<Menu>,
      selectedCategory: selectedCategory == freezed
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as Category,
      selectedShop: selectedShop == freezed
          ? _value.selectedShop
          : selectedShop // ignore: cast_nullable_to_non_nullable
              as CategoryShop,
      selectedMenus: selectedMenus == freezed
          ? _value.selectedMenus
          : selectedMenus // ignore: cast_nullable_to_non_nullable
              as List<Menu?>,
    ));
  }
}

/// @nodoc

class _$_PostEditorState implements _PostEditorState {
  const _$_PostEditorState(
      {this.categoryList = const [],
      this.shopList = const [],
      this.menuList = const [],
      this.selectedCategory = Category.mock,
      this.selectedShop = CategoryShop.mock,
      this.selectedMenus = const []});

  @JsonKey(defaultValue: const [])
  @override
  final List<Category> categoryList;
  @JsonKey(defaultValue: const [])
  @override
  final List<CategoryShop> shopList;
  @JsonKey(defaultValue: const [])
  @override
  final List<Menu> menuList;
  @JsonKey(defaultValue: Category.mock)
  @override
  final Category selectedCategory;
  @JsonKey(defaultValue: CategoryShop.mock)
  @override
  final CategoryShop selectedShop;
  @JsonKey(defaultValue: const [])
  @override
  final List<Menu?> selectedMenus;

  @override
  String toString() {
    return 'PostEditorState(categoryList: $categoryList, shopList: $shopList, menuList: $menuList, selectedCategory: $selectedCategory, selectedShop: $selectedShop, selectedMenus: $selectedMenus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostEditorState &&
            (identical(other.categoryList, categoryList) ||
                const DeepCollectionEquality()
                    .equals(other.categoryList, categoryList)) &&
            (identical(other.shopList, shopList) ||
                const DeepCollectionEquality()
                    .equals(other.shopList, shopList)) &&
            (identical(other.menuList, menuList) ||
                const DeepCollectionEquality()
                    .equals(other.menuList, menuList)) &&
            (identical(other.selectedCategory, selectedCategory) ||
                const DeepCollectionEquality()
                    .equals(other.selectedCategory, selectedCategory)) &&
            (identical(other.selectedShop, selectedShop) ||
                const DeepCollectionEquality()
                    .equals(other.selectedShop, selectedShop)) &&
            (identical(other.selectedMenus, selectedMenus) ||
                const DeepCollectionEquality()
                    .equals(other.selectedMenus, selectedMenus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categoryList) ^
      const DeepCollectionEquality().hash(shopList) ^
      const DeepCollectionEquality().hash(menuList) ^
      const DeepCollectionEquality().hash(selectedCategory) ^
      const DeepCollectionEquality().hash(selectedShop) ^
      const DeepCollectionEquality().hash(selectedMenus);

  @JsonKey(ignore: true)
  @override
  _$PostEditorStateCopyWith<_PostEditorState> get copyWith =>
      __$PostEditorStateCopyWithImpl<_PostEditorState>(this, _$identity);
}

abstract class _PostEditorState implements PostEditorState {
  const factory _PostEditorState(
      {List<Category> categoryList,
      List<CategoryShop> shopList,
      List<Menu> menuList,
      Category selectedCategory,
      CategoryShop selectedShop,
      List<Menu?> selectedMenus}) = _$_PostEditorState;

  @override
  List<Category> get categoryList => throw _privateConstructorUsedError;
  @override
  List<CategoryShop> get shopList => throw _privateConstructorUsedError;
  @override
  List<Menu> get menuList => throw _privateConstructorUsedError;
  @override
  Category get selectedCategory => throw _privateConstructorUsedError;
  @override
  CategoryShop get selectedShop => throw _privateConstructorUsedError;
  @override
  List<Menu?> get selectedMenus => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PostEditorStateCopyWith<_PostEditorState> get copyWith =>
      throw _privateConstructorUsedError;
}
