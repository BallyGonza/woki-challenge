import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woki_app/data/data.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    required String id,
    required String name,
    required String username,
    required String email,
    required AddressDto address,
    required String phone,
    required String website,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
