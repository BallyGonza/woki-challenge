import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woki_app/data/data.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  const factory Address({
    required String street,
    required String suite,
    required String city,
    required String zipcode,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  factory Address.fromDto(AddressDto dto) => Address(
        street: dto.street ?? '',
        suite: dto.suite ?? '',
        city: dto.city ?? '',
        zipcode: dto.zipcode ?? '',
      );
}
