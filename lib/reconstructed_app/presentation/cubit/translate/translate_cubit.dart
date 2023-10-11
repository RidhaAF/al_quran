import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_storage/get_storage.dart';

part 'translate_cubit.freezed.dart';
part 'translate_state.dart';

class TranslateCubit extends Cubit<TranslateState> {
  final GetStorage box;
  bool isEnglish = true;

  TranslateCubit({required this.box}) : super(const TranslateState.initial());

  bool getTranslation() {
    isEnglish = box.read('isEnglish') ?? true;
    emit(TranslateState.loaded(isEnglish));

    return isEnglish;
  }

  bool setTranslation() {
    isEnglish = !isEnglish;
    box.write('isEnglish', isEnglish);
    emit(TranslateState.loaded(isEnglish));

    return isEnglish;
  }
}
