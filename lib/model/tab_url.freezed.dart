// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tab_url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TabUrl {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TabUrlCopyWith<TabUrl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabUrlCopyWith<$Res> {
  factory $TabUrlCopyWith(TabUrl value, $Res Function(TabUrl) then) =
      _$TabUrlCopyWithImpl<$Res, TabUrl>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$TabUrlCopyWithImpl<$Res, $Val extends TabUrl>
    implements $TabUrlCopyWith<$Res> {
  _$TabUrlCopyWithImpl(this._value, this._then);

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
abstract class _$$_TabUrlCopyWith<$Res> implements $TabUrlCopyWith<$Res> {
  factory _$$_TabUrlCopyWith(_$_TabUrl value, $Res Function(_$_TabUrl) then) =
      __$$_TabUrlCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_TabUrlCopyWithImpl<$Res>
    extends _$TabUrlCopyWithImpl<$Res, _$_TabUrl>
    implements _$$_TabUrlCopyWith<$Res> {
  __$$_TabUrlCopyWithImpl(_$_TabUrl _value, $Res Function(_$_TabUrl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_TabUrl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TabUrl extends _TabUrl {
  const _$_TabUrl({required this.value}) : super._();

  @override
  final String value;

  @override
  String toString() {
    return 'TabUrl(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TabUrl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TabUrlCopyWith<_$_TabUrl> get copyWith =>
      __$$_TabUrlCopyWithImpl<_$_TabUrl>(this, _$identity);
}

abstract class _TabUrl extends TabUrl {
  const factory _TabUrl({required final String value}) = _$_TabUrl;
  const _TabUrl._() : super._();

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_TabUrlCopyWith<_$_TabUrl> get copyWith =>
      throw _privateConstructorUsedError;
}
