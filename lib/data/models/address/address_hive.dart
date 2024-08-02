import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:woki_app/data/data.dart';

part 'address_hive.freezed.dart';
part 'address_hive.g.dart';

@HiveType(typeId: 1)
@freezed
class AddressHive with _$AddressHive {
  factory AddressHive({
    @HiveField(0) @Default('') String street,
    @HiveField(1) @Default('') String suite,
    @HiveField(2) @Default('') String city,
    @HiveField(3) @Default('') String zipcode,
  }) = _AddressHive;
  const AddressHive._();

  factory AddressHive.fromModel(Address address) => AddressHive(
        street: address.street,
        suite: address.suite,
        city: address.city,
        zipcode: address.zipcode,
      );

  Address toModel() => Address(
        street: street,
        suite: suite,
        city: city,
        zipcode: zipcode,
      );
}
