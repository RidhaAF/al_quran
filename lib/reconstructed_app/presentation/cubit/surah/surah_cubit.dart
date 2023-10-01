import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/data.dart';
import '../../../domain/domain.dart';

part 'surah_cubit.freezed.dart';
part 'surah_state.dart';

class SurahCubit extends Cubit<SurahState> {
  final SurahUsecase surahUsecase;

  SurahCubit({required this.surahUsecase}) : super(const SurahState.initial());

  void fetch() async {
    emit(const SurahState.loading());
    final surah = await surahUsecase.call();
    surah.fold(
      (fail) => emit(SurahState.error(fail.message)),
      (success) => emit(SurahState.loaded(success)),
    );
  }
}
