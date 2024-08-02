import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:woki_app/data/data.dart';

part 'company_hive.freezed.dart';
part 'company_hive.g.dart';

@HiveType(typeId: 2)
@freezed
class CompanyHive with _$CompanyHive {
  factory CompanyHive({
    @HiveField(0) @Default('') String name,
    @HiveField(1) @Default('') String catchPhrase,
    @HiveField(2) @Default('') String bs,
  }) = _CompanyHive;
  const CompanyHive._();

  factory CompanyHive.fromModel(Company address) => CompanyHive(
        name: address.name,
        catchPhrase: address.catchPhrase,
        bs: address.bs,
      );

  Company toModel() => Company(
        name: name,
        catchPhrase: catchPhrase,
        bs: bs,
      );
}
