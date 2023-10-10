import 'package:dio/dio.dart';
import 'package:logging/logging.dart';

import '../../core/core.dart';
import '../data.dart';

abstract class VerseProvider {
  Future<Verse> getVerse(int surahNumber, int verseNumber);
}

class VerseProviderImpl implements VerseProvider {
  final Dio dio;

  VerseProviderImpl({required this.dio});

  final Logger log = Logger("Verse Detail Provider");

  @override
  Future<Verse> getVerse(int surahNumber, int verseNumber) async {
    log.fine('getSurah');
    Response res = await dio.get('${ApiPath.surah}/$surahNumber/$verseNumber');
    if (res.statusCode == 200) {
      final data = res.data['data'];
      return Verse.fromJson(data);
    } else {
      throw Exception();
    }
  }
}
