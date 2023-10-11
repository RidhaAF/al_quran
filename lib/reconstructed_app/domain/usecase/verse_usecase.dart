import 'package:dartz/dartz.dart';

import '../../core/core.dart';
import '../../data/data.dart';
import '../domain.dart';

class VerseUsecase {
  final VerseRepository repository;

  VerseUsecase({required this.repository});

  Future<Either<Failure, Verse>> call(int surahNumber, int verseNumber) {
    return repository.getVerse(surahNumber, verseNumber);
  }
}
