import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';

import 'core/core.dart';
import 'data/data.dart';
import 'domain/domain.dart';
import 'presentation/presentation.dart';

final di = GetIt.instance;

Future<void> injectionInit() async {
  await GetStorage.init();

  di.registerFactory<Dio>(
    () => Dio(
      BaseOptions(
        baseUrl: ApiPath.baseUrl,
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60),
      ),
    ),
  );

  di.registerFactory<GetStorage>(() => GetStorage());
  di.registerSingleton<WidgetsBinding>(WidgetsBinding.instance);

  di.registerSingleton<CustomFunctions>(CustomFunctionsImpl());

  /*---------------------- data ----------------------*/
  di.registerFactory<SurahProvider>(() => SurahProviderImpl(dio: di<Dio>()));

  /*---------------------- domain repository ----------------------*/
  di.registerLazySingleton<SurahRepository>(
    () => SurahRepositoryImpl(surahProvider: di<SurahProvider>()),
  );

  /*---------------------- domain usecase ----------------------*/
  di.registerLazySingleton(
    () => SurahUsecase(surahRepository: di<SurahRepository>()),
  );

  /*---------------------- presentation cubit ----------------------*/
  di.registerFactory(() => SurahCubit(surahUsecase: di<SurahUsecase>()));
  di.registerFactory(() => TranslateCubit(box: di<GetStorage>()));
}
