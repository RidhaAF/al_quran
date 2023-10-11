import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../core/core.dart';
import '../../domain/domain.dart';
import '../data.dart';

class VerseRepositoryImpl implements VerseRepository {
  final VerseProvider verseProvider;

  VerseRepositoryImpl({required this.verseProvider});

  @override
  Future<Either<Failure, Verse>> getVerse(
      int surahNumber, int verseNumber) async {
    try {
      final result = await verseProvider.getVerse(surahNumber, verseNumber);
      return Right(result.copyWith());
    } on ServerException {
      return const Left(ServerFailure('Server Failure'));
    } on SocketException {
      return const Left(ConnectionFailure('Connection Failure'));
    }
  }
}
