import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woki_app/data/data.dart';

part 'company.freezed.dart';
part 'company.g.dart';

@freezed
class Company with _$Company {
  const factory Company({
    required String name,
    required String catchPhrase,
    required String bs,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);

  factory Company.fromDto(CompanyDto dto) => Company(
        name: dto.name ?? '',
        catchPhrase: dto.catchPhrase ?? '',
        bs: dto.bs ?? '',
      );
}
