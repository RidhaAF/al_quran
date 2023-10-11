import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:logging/logging.dart';

import '../../core/core.dart';
import '../../domain/domain.dart';
import '../data.dart';

class SurahRepositoryImpl implements SurahRepository {
  final SurahProvider surahProvider;

  SurahRepositoryImpl({required this.surahProvider});

  final Logger log = Logger("Surah Repository");

  @override
  Future<Either<Failure, List<Surah>>> getSurahs() async {
    log.fine('getSurahs()');
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
