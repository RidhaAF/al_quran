import 'package:dartz/dartz.dart';

import '../../core/core.dart';
import '../../data/data.dart';

abstract class SurahDetailRepository {
  Future<Either<Failure, SurahDetail>> getSurahDetail(
      {required int surahNumber});
}
