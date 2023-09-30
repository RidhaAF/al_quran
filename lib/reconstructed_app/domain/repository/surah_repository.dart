import 'package:dartz/dartz.dart';

import '../../core/core.dart';
import '../../data/data.dart';

abstract class SurahRepository {
  Future<Either<Failure, List<Surah>>> getSurahs();
}
