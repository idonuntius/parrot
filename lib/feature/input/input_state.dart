import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parrot/feature/input/input_getting_url_state.dart';
import 'package:parrot/feature/input/input_saving_url_state.dart';

part 'input_state.freezed.dart';

@freezed
class InputState with _$InputState {
  const factory InputState({
    @Default(InputGettingUrlState.init()) InputGettingUrlState gettingUrlState,
    @Default(InputSavingUrlState.init()) InputSavingUrlState savingUrlState,
    @Default('') String url,
  }) = _InputState;

  const InputState._();
}
