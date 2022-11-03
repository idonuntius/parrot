import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_saving_url_state.freezed.dart';

@freezed
class InputSavingUrlState with _$InputSavingUrlState {
  const factory InputSavingUrlState.init() = _Init;
  const factory InputSavingUrlState.inProgress() = _InProgress;
  const factory InputSavingUrlState.successful() = _Successful;
  const factory InputSavingUrlState.failed(Exception e) = _Failed;

  const InputSavingUrlState._();

  bool get isInProgress => maybeWhen(
        inProgress: () => true,
        orElse: () => false,
      );

  bool get isSuccessful => maybeWhen(
        successful: () => true,
        orElse: () => false,
      );
}
