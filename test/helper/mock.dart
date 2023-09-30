import 'package:al_quran/reconstructed_app/data/data.dart';
import 'package:al_quran/reconstructed_app/domain/domain.dart';
import 'package:al_quran/reconstructed_app/domain/usecase/surah_usecase.dart';
import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';

export 'mock.mocks.dart';

@GenerateNiceMocks([
  MockSpec<Dio>(),
  // Data
  MockSpec<SurahProvider>(),
  MockSpec<SurahRepository>(),

  // Domain
  MockSpec<SurahUsecase>(),
])
void main(List<String> args) {}
