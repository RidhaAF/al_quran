import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:get_storage/get_storage.dart';

part 'translate_state.dart';

class TranslateCubit extends Cubit<TranslateState> {
  final box = GetStorage();
  bool isEnglish = true;
  TranslateCubit() : super(TranslateInitial()) {
    getTranslation();
  }

  bool getTranslation() {
    isEnglish = box.read('isEnglish') ?? true;
    emit(TranslateLoaded(isEnglish));

    return isEnglish;
  }

  bool setTranslation() {
    isEnglish = !isEnglish;
    box.write('isEnglish', isEnglish);
    emit(TranslateLoaded(isEnglish));

    return isEnglish;
  }
}
