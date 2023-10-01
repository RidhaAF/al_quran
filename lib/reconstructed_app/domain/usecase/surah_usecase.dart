import 'package:dartz/dartz.dart';
import 'package:logging/logging.dart';

import '../../core/core.dart';
import '../../data/data.dart';
import '../domain.dart';

class SurahUsecase {
  final SurahRepository surahRepository;

  SurahUsecase({required this.surahRepository});

  final Logger log = Logger("Surah Usecase");

  Future<Either<Failure, List<Surah>>> call() {
    log.fine('call');
    return surahRepository.getSurahs();
  }
}
