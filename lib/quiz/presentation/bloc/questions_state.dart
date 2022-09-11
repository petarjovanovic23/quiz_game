part of 'questions_cubit.dart';

abstract class QuestionsState extends Equatable {
  const QuestionsState();
}

class QuestionsInitial extends QuestionsState {
  @override
  List<Object> get props => [];
}

class QuestionsLoading extends QuestionsState {
  @override
  List<Object?> get props => [];
}

class QuestionsLoaded extends QuestionsState {
  final Questions questions;

  const QuestionsLoaded(this.questions);

  @override
  List<Object?> get props => [questions];
}
