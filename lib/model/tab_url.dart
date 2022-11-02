import 'package:freezed_annotation/freezed_annotation.dart';

part 'tab_url.freezed.dart';

@freezed
class TabUrl with _$TabUrl {
  const factory TabUrl({
    required String value,
  }) = _TabUrl;

  const TabUrl._();
}
