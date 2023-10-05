import 'package:al_quran/reconstructed_app/data/data.dart';
import 'package:al_quran/reconstructed_app/domain/domain.dart';
import 'package:al_quran/reconstructed_app/presentation/presentation.dart';
import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mockito/annotations.dart';

export 'mock.mocks.dart';

@GenerateNiceMocks([
  MockSpec<Dio>(),
  MockSpec<GetStorage>(),
  // Data
  MockSpec<SurahProvider>(),
  MockSpec<SurahDetailProvider>(),
  MockSpec<SurahRepository>(),

  // Domain
  MockSpec<SurahUsecase>(),

  // Presentation
  MockSpec<SurahCubit>(),
])
void main(List<String> args) {}
