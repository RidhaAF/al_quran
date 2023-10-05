import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:logging/logging.dart';

import '../../core/core.dart';
import '../../domain/domain.dart';
import '../data.dart';

class SurahDetailRepositoryImpl implements SurahDetailRepository {
  final SurahDetailProvider surahDetailProvider;

  SurahDetailRepositoryImpl({required this.surahDetailProvider});

  final Logger log = Logger("Surah Detail Repository");

  @override
  Future<Either<Failure, SurahDetail>> getSurahDetail(
      {required int surahNumber}) async {
    log.fine('getSurahs()');
    try {
      final result =
          await surahDetailProvider.getSurahDetail(surahNumber: surahNumber);
      return Right(result.copyWith());
    } on ServerException {
      return const Left(ServerFailure('Server Failure'));
    } on SocketException {
      return const Left(ConnectionFailure('Connection Failure'));
    }
  }
}
