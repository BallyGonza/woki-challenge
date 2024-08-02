import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:woki_app/data/data.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    required int id,
    required String name,
    required String email,
    required String phone,
    required String website,
    Address? address,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  factory User.fromDto(UserDto dto) => User(
        id: dto.id,
        name: dto.name ?? '',
        email: dto.email ?? '',
        address: dto.address != null ? Address.fromDto(dto.address!) : null,
        phone: dto.phone ?? '',
        website: dto.website ?? '',
      );
}
