// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  HomeGettingState get gettingState => throw _privateConstructorUsedError;
  State<void> get sendingState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({HomeGettingState gettingState, State<void> sendingState});

  $HomeGettingStateCopyWith<$Res> get gettingState;
  $StateCopyWith<void, $Res> get sendingState;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gettingState = null,
    Object? sendingState = null,
  }) {
    return _then(_value.copyWith(
      gettingState: null == gettingState
          ? _value.gettingState
          : gettingState // ignore: cast_nullable_to_non_nullable
              as HomeGettingState,
      sendingState: null == sendingState
          ? _value.sendingState
          : sendingState // ignore: cast_nullable_to_non_nullable
              as State<void>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeGettingStateCopyWith<$Res> get gettingState {
    return $HomeGettingStateCopyWith<$Res>(_value.gettingState, (value) {
      return _then(_value.copyWith(gettingState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StateCopyWith<void, $Res> get sendingState {
    return $StateCopyWith<void, $Res>(_value.sendingState, (value) {
      return _then(_value.copyWith(sendingState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeGettingState gettingState, State<void> sendingState});

  @override
  $HomeGettingStateCopyWith<$Res> get gettingState;
  @override
  $StateCopyWith<void, $Res> get sendingState;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gettingState = null,
    Object? sendingState = null,
  }) {
    return _then(_$HomeStateImpl(
      gettingState: null == gettingState
          ? _value.gettingState
          : gettingState // ignore: cast_nullable_to_non_nullable
              as HomeGettingState,
      sendingState: null == sendingState
          ? _value.sendingState
          : sendingState // ignore: cast_nullable_to_non_nullable
              as State<void>,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl extends _HomeState {
  const _$HomeStateImpl(
      {this.gettingState = const HomeGettingState.init(),
      this.sendingState = const State<void>.init()})
      : super._();

  @override
  @JsonKey()
  final HomeGettingState gettingState;
  @override
  @JsonKey()
  final State<void> sendingState;

  @override
  String toString() {
    return 'HomeState(gettingState: $gettingState, sendingState: $sendingState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.gettingState, gettingState) ||
                other.gettingState == gettingState) &&
            (identical(other.sendingState, sendingState) ||
                other.sendingState == sendingState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gettingState, sendingState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState extends HomeState {
  const factory _HomeState(
      {final HomeGettingState gettingState,
      final State<void> sendingState}) = _$HomeStateImpl;
  const _HomeState._() : super._();

  @override
  HomeGettingState get gettingState;
  @override
  State<void> get sendingState;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
