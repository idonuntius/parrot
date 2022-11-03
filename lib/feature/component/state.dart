import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class State<T> with _$State<T> {
  const factory State.init() = _Init;
  const factory State.inProgress() = _InProgress;
  const factory State.successful(T data) = _Successful;
  const factory State.failed(Exception e) = _Failed;

  const State._();

  T? get data => maybeWhen(
        successful: (data) => data,
        orElse: () => null,
      );

  bool get isInProgress => maybeWhen(
        inProgress: () => true,
        orElse: () => false,
      );

  bool get isSuccessful => maybeWhen(
        successful: (_) => true,
        orElse: () => false,
      );
}
