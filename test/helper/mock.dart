import 'package:al_quran/reconstructed_app/data/data.dart';
import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';

export 'mock.mocks.dart';

@GenerateNiceMocks([
  MockSpec<Dio>(),
  // Data
  MockSpec<SurahProvider>(),
  MockSpec<SurahRepository>(),
])
void main(List<String> args) {}
