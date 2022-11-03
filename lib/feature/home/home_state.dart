import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parrot/feature/component/state.dart';
import 'package:parrot/feature/home/home_getting_state.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(HomeGettingState.init()) HomeGettingState gettingState,
    @Default(State<void>.init()) State<void> sendingState,
  }) = _HomeState;

  const HomeState._();
}
