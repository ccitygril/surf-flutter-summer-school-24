// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resoursces_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResourscesList {
  List<ImageEntity> get items => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResourscesListCopyWith<ResourscesList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourscesListCopyWith<$Res> {
  factory $ResourscesListCopyWith(
          ResourscesList value, $Res Function(ResourscesList) then) =
      _$ResourscesListCopyWithImpl<$Res, ResourscesList>;
  @useResult
  $Res call({List<ImageEntity> items, String? type, int? limit, int? offset});
}

/// @nodoc
class _$ResourscesListCopyWithImpl<$Res, $Val extends ResourscesList>
    implements $ResourscesListCopyWith<$Res> {
  _$ResourscesListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? type = freezed,
    Object? limit = freezed,
    Object? offset = freezed,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ImageEntity>,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResourscesListImplCopyWith<$Res>
    implements $ResourscesListCopyWith<$Res> {
  factory _$$ResourscesListImplCopyWith(_$ResourscesListImpl value,
          $Res Function(_$ResourscesListImpl) then) =
      __$$ResourscesListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ImageEntity> items, String? type, int? limit, int? offset});
}

/// @nodoc
class __$$ResourscesListImplCopyWithImpl<$Res>
    extends _$ResourscesListCopyWithImpl<$Res, _$ResourscesListImpl>
    implements _$$ResourscesListImplCopyWith<$Res> {
  __$$ResourscesListImplCopyWithImpl(
      _$ResourscesListImpl _value, $Res Function(_$ResourscesListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? type = freezed,
    Object? limit = freezed,
    Object? offset = freezed,
  }) {
    return _then(_$ResourscesListImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ImageEntity>,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ResourscesListImpl implements _ResourscesList {
  const _$ResourscesListImpl(
      {required final List<ImageEntity> items,
      this.type,
      this.limit,
      this.offset})
      : _items = items;

  final List<ImageEntity> _items;
  @override
  List<ImageEntity> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String? type;
  @override
  final int? limit;
  @override
  final int? offset;

  @override
  String toString() {
    return 'ResourscesList(items: $items, type: $type, limit: $limit, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourscesListImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_items), type, limit, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourscesListImplCopyWith<_$ResourscesListImpl> get copyWith =>
      __$$ResourscesListImplCopyWithImpl<_$ResourscesListImpl>(
          this, _$identity);
}

abstract class _ResourscesList implements ResourscesList {
  const factory _ResourscesList(
      {required final List<ImageEntity> items,
      final String? type,
      final int? limit,
      final int? offset}) = _$ResourscesListImpl;

  @override
  List<ImageEntity> get items;
  @override
  String? get type;
  @override
  int? get limit;
  @override
  int? get offset;
  @override
  @JsonKey(ignore: true)
  _$$ResourscesListImplCopyWith<_$ResourscesListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
