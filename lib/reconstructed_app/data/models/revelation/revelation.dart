import 'package:freezed_annotation/freezed_annotation.dart';

part 'revelation.freezed.dart';
part 'revelation.g.dart';

@freezed
class Revelation with _$Revelation {
  const factory Revelation({
    required String arab,
    required String en,
    required String id,
  }) = _Revelation;

  factory Revelation.fromJson(Map<String, dynamic> json) =>
      _$RevelationFromJson(json);
}
