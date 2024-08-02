import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woki_app/data/data.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  factory UserDto({
    required int id,
    String? name,
    String? username,
    String? email,
    AddressDto? address,
    String? phone,
    String? website,
    CompanyDto? company,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
