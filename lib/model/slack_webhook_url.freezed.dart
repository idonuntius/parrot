// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slack_webhook_url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SlackWebhookUrl {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SlackWebhookUrlCopyWith<SlackWebhookUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlackWebhookUrlCopyWith<$Res> {
  factory $SlackWebhookUrlCopyWith(
          SlackWebhookUrl value, $Res Function(SlackWebhookUrl) then) =
      _$SlackWebhookUrlCopyWithImpl<$Res, SlackWebhookUrl>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$SlackWebhookUrlCopyWithImpl<$Res, $Val extends SlackWebhookUrl>
    implements $SlackWebhookUrlCopyWith<$Res> {
  _$SlackWebhookUrlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SlackWebhookUrlImplCopyWith<$Res>
    implements $SlackWebhookUrlCopyWith<$Res> {
  factory _$$SlackWebhookUrlImplCopyWith(_$SlackWebhookUrlImpl value,
          $Res Function(_$SlackWebhookUrlImpl) then) =
      __$$SlackWebhookUrlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$SlackWebhookUrlImplCopyWithImpl<$Res>
    extends _$SlackWebhookUrlCopyWithImpl<$Res, _$SlackWebhookUrlImpl>
    implements _$$SlackWebhookUrlImplCopyWith<$Res> {
  __$$SlackWebhookUrlImplCopyWithImpl(
      _$SlackWebhookUrlImpl _value, $Res Function(_$SlackWebhookUrlImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SlackWebhookUrlImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SlackWebhookUrlImpl extends _SlackWebhookUrl {
  const _$SlackWebhookUrlImpl({required this.value}) : super._();

  @override
  final String value;

  @override
  String toString() {
    return 'SlackWebhookUrl(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlackWebhookUrlImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SlackWebhookUrlImplCopyWith<_$SlackWebhookUrlImpl> get copyWith =>
      __$$SlackWebhookUrlImplCopyWithImpl<_$SlackWebhookUrlImpl>(
          this, _$identity);
}

abstract class _SlackWebhookUrl extends SlackWebhookUrl {
  const factory _SlackWebhookUrl({required final String value}) =
      _$SlackWebhookUrlImpl;
  const _SlackWebhookUrl._() : super._();

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$SlackWebhookUrlImplCopyWith<_$SlackWebhookUrlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
