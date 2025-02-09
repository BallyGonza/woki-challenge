import 'package:freezed_annotation/freezed_annotation.dart';

part 'geo_dto.freezed.dart';
part 'geo_dto.g.dart';

@freezed
class GeoDto with _$GeoDto {
  factory GeoDto({
    String? lat,
    String? lng,
  }) = _GeoDto;

  factory GeoDto.fromJson(Map<String, dynamic> json) => _$GeoDtoFromJson(json);
}
