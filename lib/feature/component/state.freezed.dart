// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
abstract class _$$InitImplCopyWith<T, $Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl<T> value, $Res Function(_$InitImpl<T>) then) =
      __$$InitImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<T, $Res>
    extends _$StateCopyWithImpl<T, $Res, _$InitImpl<T>>
    implements _$$InitImplCopyWith<T, $Res> {
  __$$InitImplCopyWithImpl(
      _$InitImpl<T> _value, $Res Function(_$InitImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl<T> extends _Init<T> {
  const _$InitImpl() : super._();

  @override
  String toString() {
    return 'State<$T>.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl<T>);
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
  const factory _Init() = _$InitImpl<T>;
  const _Init._() : super._();
}

/// @nodoc
abstract class _$$InProgressImplCopyWith<T, $Res> {
  factory _$$InProgressImplCopyWith(
          _$InProgressImpl<T> value, $Res Function(_$InProgressImpl<T>) then) =
      __$$InProgressImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InProgressImplCopyWithImpl<T, $Res>
    extends _$StateCopyWithImpl<T, $Res, _$InProgressImpl<T>>
    implements _$$InProgressImplCopyWith<T, $Res> {
  __$$InProgressImplCopyWithImpl(
      _$InProgressImpl<T> _value, $Res Function(_$InProgressImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InProgressImpl<T> extends _InProgress<T> {
  const _$InProgressImpl() : super._();

  @override
  String toString() {
    return 'State<$T>.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InProgressImpl<T>);
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
  const factory _InProgress() = _$InProgressImpl<T>;
  const _InProgress._() : super._();
}

/// @nodoc
abstract class _$$SuccessfulImplCopyWith<T, $Res> {
  factory _$$SuccessfulImplCopyWith(
          _$SuccessfulImpl<T> value, $Res Function(_$SuccessfulImpl<T>) then) =
      __$$SuccessfulImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SuccessfulImplCopyWithImpl<T, $Res>
    extends _$StateCopyWithImpl<T, $Res, _$SuccessfulImpl<T>>
    implements _$$SuccessfulImplCopyWith<T, $Res> {
  __$$SuccessfulImplCopyWithImpl(
      _$SuccessfulImpl<T> _value, $Res Function(_$SuccessfulImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessfulImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccessfulImpl<T> extends _Successful<T> {
  const _$SuccessfulImpl(this.data) : super._();

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
            other is _$SuccessfulImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessfulImplCopyWith<T, _$SuccessfulImpl<T>> get copyWith =>
      __$$SuccessfulImplCopyWithImpl<T, _$SuccessfulImpl<T>>(this, _$identity);

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
  const factory _Successful(final T data) = _$SuccessfulImpl<T>;
  const _Successful._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$SuccessfulImplCopyWith<T, _$SuccessfulImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<T, $Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl<T> value, $Res Function(_$FailedImpl<T>) then) =
      __$$FailedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Exception e});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<T, $Res>
    extends _$StateCopyWithImpl<T, $Res, _$FailedImpl<T>>
    implements _$$FailedImplCopyWith<T, $Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl<T> _value, $Res Function(_$FailedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$FailedImpl<T>(
      null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$FailedImpl<T> extends _Failed<T> {
  const _$FailedImpl(this.e) : super._();

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
            other is _$FailedImpl<T> &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<T, _$FailedImpl<T>> get copyWith =>
      __$$FailedImplCopyWithImpl<T, _$FailedImpl<T>>(this, _$identity);

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
  const factory _Failed(final Exception e) = _$FailedImpl<T>;
  const _Failed._() : super._();

  Exception get e;
  @JsonKey(ignore: true)
  _$$FailedImplCopyWith<T, _$FailedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
