import 'package:dartz/dartz.dart';
import 'package:logging/logging.dart';

import '../../core/core.dart';
import '../../data/data.dart';
import '../domain.dart';

class SurahDetailUsecase {
  final SurahDetailRepository surahDetailRepository;

  SurahDetailUsecase({required this.surahDetailRepository});

  final Logger log = Logger("surah detail usecase");

  Future<Either<Failure, SurahDetail>> call(int surahNumber) {
    log.fine('called');
    return surahDetailRepository.getSurahDetail(surahNumber: surahNumber);
  }
}
