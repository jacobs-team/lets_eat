import 'package:freezed_annotation/freezed_annotation.dart';

part 'display_name.freezed.dart';
part 'display_name.g.dart';

@freezed
abstract class DisplayName with _$DisplayName {
  const factory DisplayName({
    required String text,
    required String languageCode,
  }) = _DisplayName;
  factory DisplayName.fromJson(Map<String, dynamic> json) => _$DisplayNameFromJson(json);
}
