// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'slack_webhook_url_paths.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SlackWebhookUrlPaths {
  String get path1 => throw _privateConstructorUsedError;
  String get path2 => throw _privateConstructorUsedError;
  String get path3 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SlackWebhookUrlPathsCopyWith<SlackWebhookUrlPaths> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlackWebhookUrlPathsCopyWith<$Res> {
  factory $SlackWebhookUrlPathsCopyWith(SlackWebhookUrlPaths value,
          $Res Function(SlackWebhookUrlPaths) then) =
      _$SlackWebhookUrlPathsCopyWithImpl<$Res, SlackWebhookUrlPaths>;
  @useResult
  $Res call({String path1, String path2, String path3});
}

/// @nodoc
class _$SlackWebhookUrlPathsCopyWithImpl<$Res,
        $Val extends SlackWebhookUrlPaths>
    implements $SlackWebhookUrlPathsCopyWith<$Res> {
  _$SlackWebhookUrlPathsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path1 = null,
    Object? path2 = null,
    Object? path3 = null,
  }) {
    return _then(_value.copyWith(
      path1: null == path1
          ? _value.path1
          : path1 // ignore: cast_nullable_to_non_nullable
              as String,
      path2: null == path2
          ? _value.path2
          : path2 // ignore: cast_nullable_to_non_nullable
              as String,
      path3: null == path3
          ? _value.path3
          : path3 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SlackWebhookUrlPathsCopyWith<$Res>
    implements $SlackWebhookUrlPathsCopyWith<$Res> {
  factory _$$_SlackWebhookUrlPathsCopyWith(_$_SlackWebhookUrlPaths value,
          $Res Function(_$_SlackWebhookUrlPaths) then) =
      __$$_SlackWebhookUrlPathsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path1, String path2, String path3});
}

/// @nodoc
class __$$_SlackWebhookUrlPathsCopyWithImpl<$Res>
    extends _$SlackWebhookUrlPathsCopyWithImpl<$Res, _$_SlackWebhookUrlPaths>
    implements _$$_SlackWebhookUrlPathsCopyWith<$Res> {
  __$$_SlackWebhookUrlPathsCopyWithImpl(_$_SlackWebhookUrlPaths _value,
      $Res Function(_$_SlackWebhookUrlPaths) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path1 = null,
    Object? path2 = null,
    Object? path3 = null,
  }) {
    return _then(_$_SlackWebhookUrlPaths(
      path1: null == path1
          ? _value.path1
          : path1 // ignore: cast_nullable_to_non_nullable
              as String,
      path2: null == path2
          ? _value.path2
          : path2 // ignore: cast_nullable_to_non_nullable
              as String,
      path3: null == path3
          ? _value.path3
          : path3 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SlackWebhookUrlPaths extends _SlackWebhookUrlPaths {
  const _$_SlackWebhookUrlPaths(
      {required this.path1, required this.path2, required this.path3})
      : super._();

  @override
  final String path1;
  @override
  final String path2;
  @override
  final String path3;

  @override
  String toString() {
    return 'SlackWebhookUrlPaths(path1: $path1, path2: $path2, path3: $path3)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SlackWebhookUrlPaths &&
            (identical(other.path1, path1) || other.path1 == path1) &&
            (identical(other.path2, path2) || other.path2 == path2) &&
            (identical(other.path3, path3) || other.path3 == path3));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path1, path2, path3);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SlackWebhookUrlPathsCopyWith<_$_SlackWebhookUrlPaths> get copyWith =>
      __$$_SlackWebhookUrlPathsCopyWithImpl<_$_SlackWebhookUrlPaths>(
          this, _$identity);
}

abstract class _SlackWebhookUrlPaths extends SlackWebhookUrlPaths {
  const factory _SlackWebhookUrlPaths(
      {required final String path1,
      required final String path2,
      required final String path3}) = _$_SlackWebhookUrlPaths;
  const _SlackWebhookUrlPaths._() : super._();

  @override
  String get path1;
  @override
  String get path2;
  @override
  String get path3;
  @override
  @JsonKey(ignore: true)
  _$$_SlackWebhookUrlPathsCopyWith<_$_SlackWebhookUrlPaths> get copyWith =>
      throw _privateConstructorUsedError;
}
