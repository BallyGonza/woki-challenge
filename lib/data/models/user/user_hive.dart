import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:woki_app/data/data.dart';

part 'user_hive.freezed.dart';
part 'user_hive.g.dart';

@HiveType(typeId: 0)
@freezed
class UserHive with _$UserHive {
  factory UserHive({
    @HiveField(0) @Default(0) int id,
    @HiveField(1) @Default('') String name,
    @HiveField(2) @Default('') String username,
    @HiveField(3) @Default('') String email,
    @HiveField(4) @Default('') String phone,
    @HiveField(5) @Default('') String website,
    @HiveField(6) @Default(null) AddressHive? address,
    @HiveField(7) @Default(null) CompanyHive? company,
  }) = _UserHive;
  const UserHive._();

  factory UserHive.fromModel(User user) => UserHive(
        id: user.id,
        name: user.name,
        username: user.username,
        email: user.email,
        phone: user.phone,
        website: user.website,
        address:
            user.address != null ? AddressHive.fromModel(user.address!) : null,
        company:
            user.company != null ? CompanyHive.fromModel(user.company!) : null,
      );

  User toModel() => User(
        id: id,
        name: name,
        username: username,
        email: email,
        phone: phone,
        website: website,
        address: address?.toModel(),
        company: company?.toModel(),
      );
}
