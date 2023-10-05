import 'package:dartz/dartz.dart';

import '../../core/core.dart';
import '../../data/data.dart';
import '../domain.dart';

class SurahDetailUsecase {
  final SurahDetailRepository surahDetailRepository;

  SurahDetailUsecase({required this.surahDetailRepository});

  Future<Either<Failure, SurahDetail>> call(int surahNumber) async {
    return surahDetailRepository.getSurahDetail(surahNumber: surahNumber);
  }
}
