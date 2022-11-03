// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'input_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InputState {
  InputGettingUrlState get gettingUrlState =>
      throw _privateConstructorUsedError;
  InputSavingUrlState get savingUrlState => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InputStateCopyWith<InputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputStateCopyWith<$Res> {
  factory $InputStateCopyWith(
          InputState value, $Res Function(InputState) then) =
      _$InputStateCopyWithImpl<$Res, InputState>;
  @useResult
  $Res call(
      {InputGettingUrlState gettingUrlState,
      InputSavingUrlState savingUrlState,
      String url});

  $InputGettingUrlStateCopyWith<$Res> get gettingUrlState;
  $InputSavingUrlStateCopyWith<$Res> get savingUrlState;
}

/// @nodoc
class _$InputStateCopyWithImpl<$Res, $Val extends InputState>
    implements $InputStateCopyWith<$Res> {
  _$InputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gettingUrlState = null,
    Object? savingUrlState = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      gettingUrlState: null == gettingUrlState
          ? _value.gettingUrlState
          : gettingUrlState // ignore: cast_nullable_to_non_nullable
              as InputGettingUrlState,
      savingUrlState: null == savingUrlState
          ? _value.savingUrlState
          : savingUrlState // ignore: cast_nullable_to_non_nullable
              as InputSavingUrlState,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InputGettingUrlStateCopyWith<$Res> get gettingUrlState {
    return $InputGettingUrlStateCopyWith<$Res>(_value.gettingUrlState, (value) {
      return _then(_value.copyWith(gettingUrlState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InputSavingUrlStateCopyWith<$Res> get savingUrlState {
    return $InputSavingUrlStateCopyWith<$Res>(_value.savingUrlState, (value) {
      return _then(_value.copyWith(savingUrlState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InputStateCopyWith<$Res>
    implements $InputStateCopyWith<$Res> {
  factory _$$_InputStateCopyWith(
          _$_InputState value, $Res Function(_$_InputState) then) =
      __$$_InputStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InputGettingUrlState gettingUrlState,
      InputSavingUrlState savingUrlState,
      String url});

  @override
  $InputGettingUrlStateCopyWith<$Res> get gettingUrlState;
  @override
  $InputSavingUrlStateCopyWith<$Res> get savingUrlState;
}

/// @nodoc
class __$$_InputStateCopyWithImpl<$Res>
    extends _$InputStateCopyWithImpl<$Res, _$_InputState>
    implements _$$_InputStateCopyWith<$Res> {
  __$$_InputStateCopyWithImpl(
      _$_InputState _value, $Res Function(_$_InputState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gettingUrlState = null,
    Object? savingUrlState = null,
    Object? url = null,
  }) {
    return _then(_$_InputState(
      gettingUrlState: null == gettingUrlState
          ? _value.gettingUrlState
          : gettingUrlState // ignore: cast_nullable_to_non_nullable
              as InputGettingUrlState,
      savingUrlState: null == savingUrlState
          ? _value.savingUrlState
          : savingUrlState // ignore: cast_nullable_to_non_nullable
              as InputSavingUrlState,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InputState extends _InputState {
  const _$_InputState(
      {this.gettingUrlState = const InputGettingUrlState.init(),
      this.savingUrlState = const InputSavingUrlState.init(),
      this.url = ''})
      : super._();

  @override
  @JsonKey()
  final InputGettingUrlState gettingUrlState;
  @override
  @JsonKey()
  final InputSavingUrlState savingUrlState;
  @override
  @JsonKey()
  final String url;

  @override
  String toString() {
    return 'InputState(gettingUrlState: $gettingUrlState, savingUrlState: $savingUrlState, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputState &&
            (identical(other.gettingUrlState, gettingUrlState) ||
                other.gettingUrlState == gettingUrlState) &&
            (identical(other.savingUrlState, savingUrlState) ||
                other.savingUrlState == savingUrlState) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, gettingUrlState, savingUrlState, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InputStateCopyWith<_$_InputState> get copyWith =>
      __$$_InputStateCopyWithImpl<_$_InputState>(this, _$identity);
}

abstract class _InputState extends InputState {
  const factory _InputState(
      {final InputGettingUrlState gettingUrlState,
      final InputSavingUrlState savingUrlState,
      final String url}) = _$_InputState;
  const _InputState._() : super._();

  @override
  InputGettingUrlState get gettingUrlState;
  @override
  InputSavingUrlState get savingUrlState;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_InputStateCopyWith<_$_InputState> get copyWith =>
      throw _privateConstructorUsedError;
}
