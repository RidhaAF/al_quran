import 'package:dio/dio.dart';

import '../../core/core.dart';
import '../data.dart';

abstract class SurahProvider {
  Future<List<Surah>> getSurahs();
}

class SurahProviderImpl implements SurahProvider {
  final Dio dio;

  SurahProviderImpl({required this.dio});

  @override
  Future<List<Surah>> getSurahs() async {
    Response res = await dio.get(ApiPath.surah);
    if (res.statusCode == 200) {
      final List<dynamic> data = res.data['data'];
      return data.map((data) => Surah.fromJson(data)).toList();
    } else {
      throw ServerException();
    }
  }
}
