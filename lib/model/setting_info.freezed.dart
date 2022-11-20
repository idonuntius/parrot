// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'setting_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingInfo {
  bool get isRich => throw _privateConstructorUsedError;
  SlackWebhookUrl? get slackWebhookUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingInfoCopyWith<SettingInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingInfoCopyWith<$Res> {
  factory $SettingInfoCopyWith(
          SettingInfo value, $Res Function(SettingInfo) then) =
      _$SettingInfoCopyWithImpl<$Res, SettingInfo>;
  @useResult
  $Res call({bool isRich, SlackWebhookUrl? slackWebhookUrl});

  $SlackWebhookUrlCopyWith<$Res>? get slackWebhookUrl;
}

/// @nodoc
class _$SettingInfoCopyWithImpl<$Res, $Val extends SettingInfo>
    implements $SettingInfoCopyWith<$Res> {
  _$SettingInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRich = null,
    Object? slackWebhookUrl = freezed,
  }) {
    return _then(_value.copyWith(
      isRich: null == isRich
          ? _value.isRich
          : isRich // ignore: cast_nullable_to_non_nullable
              as bool,
      slackWebhookUrl: freezed == slackWebhookUrl
          ? _value.slackWebhookUrl
          : slackWebhookUrl // ignore: cast_nullable_to_non_nullable
              as SlackWebhookUrl?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SlackWebhookUrlCopyWith<$Res>? get slackWebhookUrl {
    if (_value.slackWebhookUrl == null) {
      return null;
    }

    return $SlackWebhookUrlCopyWith<$Res>(_value.slackWebhookUrl!, (value) {
      return _then(_value.copyWith(slackWebhookUrl: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SettingInfoCopyWith<$Res>
    implements $SettingInfoCopyWith<$Res> {
  factory _$$_SettingInfoCopyWith(
          _$_SettingInfo value, $Res Function(_$_SettingInfo) then) =
      __$$_SettingInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isRich, SlackWebhookUrl? slackWebhookUrl});

  @override
  $SlackWebhookUrlCopyWith<$Res>? get slackWebhookUrl;
}

/// @nodoc
class __$$_SettingInfoCopyWithImpl<$Res>
    extends _$SettingInfoCopyWithImpl<$Res, _$_SettingInfo>
    implements _$$_SettingInfoCopyWith<$Res> {
  __$$_SettingInfoCopyWithImpl(
      _$_SettingInfo _value, $Res Function(_$_SettingInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRich = null,
    Object? slackWebhookUrl = freezed,
  }) {
    return _then(_$_SettingInfo(
      isRich: null == isRich
          ? _value.isRich
          : isRich // ignore: cast_nullable_to_non_nullable
              as bool,
      slackWebhookUrl: freezed == slackWebhookUrl
          ? _value.slackWebhookUrl
          : slackWebhookUrl // ignore: cast_nullable_to_non_nullable
              as SlackWebhookUrl?,
    ));
  }
}

/// @nodoc

class _$_SettingInfo extends _SettingInfo {
  const _$_SettingInfo({required this.isRich, this.slackWebhookUrl})
      : super._();

  @override
  final bool isRich;
  @override
  final SlackWebhookUrl? slackWebhookUrl;

  @override
  String toString() {
    return 'SettingInfo(isRich: $isRich, slackWebhookUrl: $slackWebhookUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingInfo &&
            (identical(other.isRich, isRich) || other.isRich == isRich) &&
            (identical(other.slackWebhookUrl, slackWebhookUrl) ||
                other.slackWebhookUrl == slackWebhookUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRich, slackWebhookUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingInfoCopyWith<_$_SettingInfo> get copyWith =>
      __$$_SettingInfoCopyWithImpl<_$_SettingInfo>(this, _$identity);
}

abstract class _SettingInfo extends SettingInfo {
  const factory _SettingInfo(
      {required final bool isRich,
      final SlackWebhookUrl? slackWebhookUrl}) = _$_SettingInfo;
  const _SettingInfo._() : super._();

  @override
  bool get isRich;
  @override
  SlackWebhookUrl? get slackWebhookUrl;
  @override
  @JsonKey(ignore: true)
  _$$_SettingInfoCopyWith<_$_SettingInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
