import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parrot/feature/component/state.dart';
import 'package:parrot/model/setting_info.dart';

part 'input_state.freezed.dart';

@freezed
class InputState with _$InputState {
  factory InputState({
    @Default(State<SettingInfo>.init()) State<SettingInfo> gettingSettingInfoState,
    @Default(State<void>.init()) State<void> savingUrlState,
    @Default(State<void>.init()) State<void> savingIsRichState,
    @Default('') String url,
  }) = _InputState;

  const InputState._();
}
