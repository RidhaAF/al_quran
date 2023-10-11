import 'package:dartz/dartz.dart';

import '../../core/core.dart';
import '../../data/data.dart';

abstract class VerseRepository{
  Future<Either<Failure,Verse>> getVerse(int surahNumber, int verseNumber);
}
