import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data.dart';

part 'name.freezed.dart';
part 'name.g.dart';

@freezed
class Name with _$Name {
  @JsonSerializable(explicitToJson: true)
  const factory Name({
    required String short,
    required String long,
    required Translation transliteration,
    required Translation translation,
  }) = _Name;

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}
