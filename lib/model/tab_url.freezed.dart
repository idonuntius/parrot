// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
abstract class _$$TabUrlImplCopyWith<$Res> implements $TabUrlCopyWith<$Res> {
  factory _$$TabUrlImplCopyWith(
          _$TabUrlImpl value, $Res Function(_$TabUrlImpl) then) =
      __$$TabUrlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$TabUrlImplCopyWithImpl<$Res>
    extends _$TabUrlCopyWithImpl<$Res, _$TabUrlImpl>
    implements _$$TabUrlImplCopyWith<$Res> {
  __$$TabUrlImplCopyWithImpl(
      _$TabUrlImpl _value, $Res Function(_$TabUrlImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$TabUrlImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TabUrlImpl extends _TabUrl {
  const _$TabUrlImpl({required this.value}) : super._();

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
            other is _$TabUrlImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TabUrlImplCopyWith<_$TabUrlImpl> get copyWith =>
      __$$TabUrlImplCopyWithImpl<_$TabUrlImpl>(this, _$identity);
}

abstract class _TabUrl extends TabUrl {
  const factory _TabUrl({required final String value}) = _$TabUrlImpl;
  const _TabUrl._() : super._();

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$TabUrlImplCopyWith<_$TabUrlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
