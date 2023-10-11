import 'package:freezed_annotation/freezed_annotation.dart';

part 'tafsir.freezed.dart';
part 'tafsir.g.dart';

@freezed
class Tafsir with _$Tafsir {
  const factory Tafsir({
    required String id,
  }) = _Tafsir;

  factory Tafsir.fromJson(Map<String, dynamic> json) => _$TafsirFromJson(json);
}
