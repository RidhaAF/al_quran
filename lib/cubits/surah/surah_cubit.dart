import 'package:al_quran/models/surah_model.dart';
import 'package:al_quran/services/surah_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'surah_state.dart';

class SurahCubit extends Cubit<SurahState> {
  late SurahModel surahModel;
  SurahCubit() : super(SurahInitial()) {
    getSurahs();
  }

  void getSurahs() async {
    emit(SurahLoading());
    try {
      surahModel = await SurahService().getSurahs();
      emit(SurahLoaded(surahModel));
    } catch (e) {
      emit(SurahError(e.toString()));
    }
  }

  getSurahModel() {
    return surahModel;
  }

  getSurahsData() {
    return surahModel.data ?? [];
  }
}
