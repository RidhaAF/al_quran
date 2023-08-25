import 'package:al_quran/models/verse_model.dart';
import 'package:al_quran/services/surah_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'verse_state.dart';

class VerseCubit extends Cubit<VerseState> {
  late VerseModel verseModel;
  VerseCubit() : super(VerseInitial());

  Future<void> getVerse({
    required String surahNumber,
    required String verseNumber,
  }) async {
    emit(VerseLoading());
    try {
      verseModel = await SurahService().getVerse(
        surahNumber: surahNumber,
        verseNumber: verseNumber,
      );
      emit(VerseLoaded(verseModel));
    } catch (e) {
      emit(VerseError(e.toString()));
    }
  }
}
