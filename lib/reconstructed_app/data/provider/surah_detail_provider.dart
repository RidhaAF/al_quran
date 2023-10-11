import 'package:dio/dio.dart';
import 'package:logging/logging.dart';

import '../../core/core.dart';
import '../data.dart';

abstract class SurahDetailProvider {
  Future<SurahDetail> getSurahDetail({required int surahNumber});
}

class SurahDetailProviderImpl implements SurahDetailProvider {
  final Dio dio;

  SurahDetailProviderImpl({required this.dio});

  final Logger log = Logger("Surah Detail Provider");

  @override
  Future<SurahDetail> getSurahDetail({required int surahNumber}) async {
    log.fine('get surah detail');
    Response res = await dio.get('${ApiPath.surah}/$surahNumber');
    if (res.statusCode == 200) {
      final data = res.data['data'];
      return SurahDetail.fromJson(data);
    } else {
      throw Exception();
    }
  }
}
