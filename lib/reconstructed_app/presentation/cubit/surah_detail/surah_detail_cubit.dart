import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/data.dart';
import '../../../domain/domain.dart';

part 'surah_detail_cubit.freezed.dart';
part 'surah_detail_state.dart';

class SurahDetailCubit extends Cubit<SurahDetailState> {
  final SurahDetailUsecase surahDetailusecase;
  late SurahDetail surahDetail;

  SurahDetailCubit(this.surahDetailusecase)
      : super(const SurahDetailState.initial());

  void getSurah(int surahNumber) async {
    emit(const SurahDetailState.loading());
    final surahResult = await surahDetailusecase.call(surahNumber);
    surahResult.fold((fail) => emit(SurahDetailState.error(fail.message)),
        (success) {
      surahDetail = success;
      emit(SurahDetailState.loaded(surahDetail));
    });
  }

  getSurahData() {
    return surahDetail;
  }
}
