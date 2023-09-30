import 'package:dartz/dartz.dart';

import '../../core/core.dart';
import '../../data/data.dart';
import '../domain.dart';

class SurahUsecase {
  final SurahRepository surahRepository;

  SurahUsecase({required this.surahRepository});

  Future<Either<Failure, List<Surah>>> call() {
    return surahRepository.getSurahs();
  }
}
