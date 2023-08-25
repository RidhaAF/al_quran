part of 'verse_cubit.dart';

sealed class VerseState extends Equatable {
  const VerseState();

  @override
  List<Object> get props => [];
}

final class VerseInitial extends VerseState {}

final class VerseLoading extends VerseState {}

final class VerseLoaded extends VerseState {
  final VerseModel verse;

  const VerseLoaded(this.verse);

  @override
  List<Object> get props => [verse];
}

final class VerseError extends VerseState {
  final String message;

  const VerseError(this.message);

  @override
  List<Object> get props => [message];
}
