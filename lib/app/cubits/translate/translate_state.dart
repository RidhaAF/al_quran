part of 'translate_cubit.dart';

sealed class TranslateState extends Equatable {
  const TranslateState();

  @override
  List<Object> get props => [];
}

final class TranslateInitial extends TranslateState {}

final class TranslateLoading extends TranslateState {}

final class TranslateLoaded extends TranslateState {
  final bool isEnglish;
  const TranslateLoaded(this.isEnglish);

  @override
  List<Object> get props => [isEnglish];
}

final class TranslateError extends TranslateState {
  final String message;
  const TranslateError(this.message);

  @override
  List<Object> get props => [message];
}
