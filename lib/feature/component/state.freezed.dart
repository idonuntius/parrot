// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$State<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() inProgress,
    required TResult Function(T data) successful,
    required TResult Function(Exception e) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? inProgress,
    TResult? Function(T data)? successful,
    TResult? Function(Exception e)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? inProgress,
    TResult Function(T data)? successful,
    TResult Function(Exception e)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init<T> value) init,
    required TResult Function(_InProgress<T> value) inProgress,
    required TResult Function(_Successful<T> value) successful,
    required TResult Function(_Failed<T> value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init<T> value)? init,
    TResult? Function(_InProgress<T> value)? inProgress,
    TResult? Function(_Successful<T> value)? successful,
    TResult? Function(_Failed<T> value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init<T> value)? init,
    TResult Function(_InProgress<T> value)? inProgress,
    TResult Function(_Successful<T> value)? successful,
    TResult Function(_Failed<T> value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateCopyWith<T, $Res> {
  factory $StateCopyWith(State<T> value, $Res Function(State<T>) then) =
      _$StateCopyWithImpl<T, $Res, State<T>>;
}

/// @nodoc
class _$StateCopyWithImpl<T, $Res, $Val extends State<T>>
    implements $StateCopyWith<T, $Res> {
  _$StateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitCopyWith<T, $Res> {
  factory _$$_InitCopyWith(_$_Init<T> value, $Res Function(_$_Init<T>) then) =
      __$$_InitCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_InitCopyWithImpl<T, $Res>
    extends _$StateCopyWithImpl<T, $Res, _$_Init<T>>
    implements _$$_InitCopyWith<T, $Res> {
  __$$_InitCopyWithImpl(_$_Init<T> _value, $Res Function(_$_Init<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Init<T> extends _Init<T> {
  const _$_Init() : super._();

  @override
  String toString() {
    return 'State<$T>.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Init<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() inProgress,
    required TResult Function(T data) successful,
    required TResult Function(Exception e) failed,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? inProgress,
    TResult? Function(T data)? successful,
    TResult? Function(Exception e)? failed,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? inProgress,
    TResult Function(T data)? successful,
    TResult Function(Exception e)? failed,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init<T> value) init,
    required TResult Function(_InProgress<T> value) inProgress,
    required TResult Function(_Successful<T> value) successful,
    required TResult Function(_Failed<T> value) failed,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init<T> value)? init,
    TResult? Function(_InProgress<T> value)? inProgress,
    TResult? Function(_Successful<T> value)? successful,
    TResult? Function(_Failed<T> value)? failed,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init<T> value)? init,
    TResult Function(_InProgress<T> value)? inProgress,
    TResult Function(_Successful<T> value)? successful,
    TResult Function(_Failed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init<T> extends State<T> {
  const factory _Init() = _$_Init<T>;
  const _Init._() : super._();
}

/// @nodoc
abstract class _$$_InProgressCopyWith<T, $Res> {
  factory _$$_InProgressCopyWith(
          _$_InProgress<T> value, $Res Function(_$_InProgress<T>) then) =
      __$$_InProgressCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_InProgressCopyWithImpl<T, $Res>
    extends _$StateCopyWithImpl<T, $Res, _$_InProgress<T>>
    implements _$$_InProgressCopyWith<T, $Res> {
  __$$_InProgressCopyWithImpl(
      _$_InProgress<T> _value, $Res Function(_$_InProgress<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InProgress<T> extends _InProgress<T> {
  const _$_InProgress() : super._();

  @override
  String toString() {
    return 'State<$T>.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InProgress<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() inProgress,
    required TResult Function(T data) successful,
    required TResult Function(Exception e) failed,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? inProgress,
    TResult? Function(T data)? successful,
    TResult? Function(Exception e)? failed,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? inProgress,
    TResult Function(T data)? successful,
    TResult Function(Exception e)? failed,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init<T> value) init,
    required TResult Function(_InProgress<T> value) inProgress,
    required TResult Function(_Successful<T> value) successful,
    required TResult Function(_Failed<T> value) failed,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init<T> value)? init,
    TResult? Function(_InProgress<T> value)? inProgress,
    TResult? Function(_Successful<T> value)? successful,
    TResult? Function(_Failed<T> value)? failed,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init<T> value)? init,
    TResult Function(_InProgress<T> value)? inProgress,
    TResult Function(_Successful<T> value)? successful,
    TResult Function(_Failed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress<T> extends State<T> {
  const factory _InProgress() = _$_InProgress<T>;
  const _InProgress._() : super._();
}

/// @nodoc
abstract class _$$_SuccessfulCopyWith<T, $Res> {
  factory _$$_SuccessfulCopyWith(
          _$_Successful<T> value, $Res Function(_$_Successful<T>) then) =
      __$$_SuccessfulCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$_SuccessfulCopyWithImpl<T, $Res>
    extends _$StateCopyWithImpl<T, $Res, _$_Successful<T>>
    implements _$$_SuccessfulCopyWith<T, $Res> {
  __$$_SuccessfulCopyWithImpl(
      _$_Successful<T> _value, $Res Function(_$_Successful<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Successful<T>(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_Successful<T> extends _Successful<T> {
  const _$_Successful(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'State<$T>.successful(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Successful<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessfulCopyWith<T, _$_Successful<T>> get copyWith =>
      __$$_SuccessfulCopyWithImpl<T, _$_Successful<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() inProgress,
    required TResult Function(T data) successful,
    required TResult Function(Exception e) failed,
  }) {
    return successful(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? inProgress,
    TResult? Function(T data)? successful,
    TResult? Function(Exception e)? failed,
  }) {
    return successful?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? inProgress,
    TResult Function(T data)? successful,
    TResult Function(Exception e)? failed,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init<T> value) init,
    required TResult Function(_InProgress<T> value) inProgress,
    required TResult Function(_Successful<T> value) successful,
    required TResult Function(_Failed<T> value) failed,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init<T> value)? init,
    TResult? Function(_InProgress<T> value)? inProgress,
    TResult? Function(_Successful<T> value)? successful,
    TResult? Function(_Failed<T> value)? failed,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init<T> value)? init,
    TResult Function(_InProgress<T> value)? inProgress,
    TResult Function(_Successful<T> value)? successful,
    TResult Function(_Failed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class _Successful<T> extends State<T> {
  const factory _Successful(final T data) = _$_Successful<T>;
  const _Successful._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$_SuccessfulCopyWith<T, _$_Successful<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailedCopyWith<T, $Res> {
  factory _$$_FailedCopyWith(
          _$_Failed<T> value, $Res Function(_$_Failed<T>) then) =
      __$$_FailedCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Exception e});
}

/// @nodoc
class __$$_FailedCopyWithImpl<T, $Res>
    extends _$StateCopyWithImpl<T, $Res, _$_Failed<T>>
    implements _$$_FailedCopyWith<T, $Res> {
  __$$_FailedCopyWithImpl(
      _$_Failed<T> _value, $Res Function(_$_Failed<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$_Failed<T>(
      null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$_Failed<T> extends _Failed<T> {
  const _$_Failed(this.e) : super._();

  @override
  final Exception e;

  @override
  String toString() {
    return 'State<$T>.failed(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failed<T> &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailedCopyWith<T, _$_Failed<T>> get copyWith =>
      __$$_FailedCopyWithImpl<T, _$_Failed<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() inProgress,
    required TResult Function(T data) successful,
    required TResult Function(Exception e) failed,
  }) {
    return failed(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? inProgress,
    TResult? Function(T data)? successful,
    TResult? Function(Exception e)? failed,
  }) {
    return failed?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? inProgress,
    TResult Function(T data)? successful,
    TResult Function(Exception e)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init<T> value) init,
    required TResult Function(_InProgress<T> value) inProgress,
    required TResult Function(_Successful<T> value) successful,
    required TResult Function(_Failed<T> value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init<T> value)? init,
    TResult? Function(_InProgress<T> value)? inProgress,
    TResult? Function(_Successful<T> value)? successful,
    TResult? Function(_Failed<T> value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init<T> value)? init,
    TResult Function(_InProgress<T> value)? inProgress,
    TResult Function(_Successful<T> value)? successful,
    TResult Function(_Failed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed<T> extends State<T> {
  const factory _Failed(final Exception e) = _$_Failed<T>;
  const _Failed._() : super._();

  Exception get e;
  @JsonKey(ignore: true)
  _$$_FailedCopyWith<T, _$_Failed<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
