import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../core/core.dart';
import '../data.dart';

abstract class SurahRepository {
  Future<Either<Failure, List<Surah>>> getSurahs();
}

class SurahRepositoryImpl implements SurahRepository {
  final SurahProvider surahProvider;

  SurahRepositoryImpl({required this.surahProvider});

  @override
  Future<Either<Failure, List<Surah>>> getSurahs() async {
    try {
      final result = await surahProvider.getSurahs();
      return Right(result.map((surah) => surah.copyWith()).toList());
    } on ServerException {
      return const Left(ServerFailure('Server Failure'));
    } on SocketException {
      return const Left(ConnectionFailure('Connection Failure'));
    }
  }
}
