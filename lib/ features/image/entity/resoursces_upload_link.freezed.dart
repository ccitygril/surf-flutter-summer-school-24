// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resoursces_upload_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResourceUploadLink {
  String get operationId => throw _privateConstructorUsedError;
  String get href => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  bool? get templated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResourceUploadLinkCopyWith<ResourceUploadLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceUploadLinkCopyWith<$Res> {
  factory $ResourceUploadLinkCopyWith(
          ResourceUploadLink value, $Res Function(ResourceUploadLink) then) =
      _$ResourceUploadLinkCopyWithImpl<$Res, ResourceUploadLink>;
  @useResult
  $Res call({String operationId, String href, String method, bool? templated});
}

/// @nodoc
class _$ResourceUploadLinkCopyWithImpl<$Res, $Val extends ResourceUploadLink>
    implements $ResourceUploadLinkCopyWith<$Res> {
  _$ResourceUploadLinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operationId = null,
    Object? href = null,
    Object? method = null,
    Object? templated = freezed,
  }) {
    return _then(_value.copyWith(
      operationId: null == operationId
          ? _value.operationId
          : operationId // ignore: cast_nullable_to_non_nullable
              as String,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      templated: freezed == templated
          ? _value.templated
          : templated // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResourceUploadLinkImplCopyWith<$Res>
    implements $ResourceUploadLinkCopyWith<$Res> {
  factory _$$ResourceUploadLinkImplCopyWith(_$ResourceUploadLinkImpl value,
          $Res Function(_$ResourceUploadLinkImpl) then) =
      __$$ResourceUploadLinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String operationId, String href, String method, bool? templated});
}

/// @nodoc
class __$$ResourceUploadLinkImplCopyWithImpl<$Res>
    extends _$ResourceUploadLinkCopyWithImpl<$Res, _$ResourceUploadLinkImpl>
    implements _$$ResourceUploadLinkImplCopyWith<$Res> {
  __$$ResourceUploadLinkImplCopyWithImpl(_$ResourceUploadLinkImpl _value,
      $Res Function(_$ResourceUploadLinkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operationId = null,
    Object? href = null,
    Object? method = null,
    Object? templated = freezed,
  }) {
    return _then(_$ResourceUploadLinkImpl(
      operationId: null == operationId
          ? _value.operationId
          : operationId // ignore: cast_nullable_to_non_nullable
              as String,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      templated: freezed == templated
          ? _value.templated
          : templated // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$ResourceUploadLinkImpl implements _ResourceUploadLink {
  const _$ResourceUploadLinkImpl(
      {required this.operationId,
      required this.href,
      required this.method,
      this.templated});

  @override
  final String operationId;
  @override
  final String href;
  @override
  final String method;
  @override
  final bool? templated;

  @override
  String toString() {
    return 'ResourceUploadLink(operationId: $operationId, href: $href, method: $method, templated: $templated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourceUploadLinkImpl &&
            (identical(other.operationId, operationId) ||
                other.operationId == operationId) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.templated, templated) ||
                other.templated == templated));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, operationId, href, method, templated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourceUploadLinkImplCopyWith<_$ResourceUploadLinkImpl> get copyWith =>
      __$$ResourceUploadLinkImplCopyWithImpl<_$ResourceUploadLinkImpl>(
          this, _$identity);
}

abstract class _ResourceUploadLink implements ResourceUploadLink {
  const factory _ResourceUploadLink(
      {required final String operationId,
      required final String href,
      required final String method,
      final bool? templated}) = _$ResourceUploadLinkImpl;

  @override
  String get operationId;
  @override
  String get href;
  @override
  String get method;
  @override
  bool? get templated;
  @override
  @JsonKey(ignore: true)
  _$$ResourceUploadLinkImplCopyWith<_$ResourceUploadLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
