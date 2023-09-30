import 'package:al_quran/app/models/surah_detail_model.dart';
import 'package:al_quran/app/services/surah_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'surah_detail_state.dart';

class SurahDetailCubit extends Cubit<SurahDetailState> {
  late SurahDetailModel surahDetailModel;
  SurahDetailCubit() : super(SurahDetailInitial());

  Future<void> getSurah({required String surahNumber}) async {
    emit(SurahDetailLoading());
    try {
      surahDetailModel =
          await SurahService().getSurah(surahNumber: surahNumber);
      emit(SurahDetailLoaded(surahDetailModel));
    } catch (e) {
      emit(SurahDetailError(e.toString()));
    }
  }

  getSurahData() {
    return surahDetailModel;
  }
}
