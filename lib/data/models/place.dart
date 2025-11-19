import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lets_eat/data/models/display_name.dart';
import 'package:lets_eat/data/models/location.dart';

part 'place.freezed.dart';
part 'place.g.dart';

@freezed
abstract class Place with _$Place {
  const factory Place({
    required String id,
    required DisplayName displayName,
    required Location location,
  }) = _Place;
  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}
