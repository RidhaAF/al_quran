part of 'surah_detail_cubit.dart';

sealed class SurahDetailState extends Equatable {
  const SurahDetailState();

  @override
  List<Object> get props => [];
}

final class SurahDetailInitial extends SurahDetailState {}

final class SurahDetailLoading extends SurahDetailState {}

final class SurahDetailLoaded extends SurahDetailState {
  final SurahDetailModel surahDetailModel;

  const SurahDetailLoaded(this.surahDetailModel);

  @override
  List<Object> get props => [surahDetailModel];
}

final class SurahDetailError extends SurahDetailState {
  final String message;

  const SurahDetailError(this.message);

  @override
  List<Object> get props => [message];
}
