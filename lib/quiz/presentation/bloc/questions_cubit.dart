import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quiz_game/core/usecases/usecase.dart';
import 'package:quiz_game/quiz/domain/entities/question.dart';

import '../../domain/usecases/get_questions.dart';

part 'questions_state.dart';

class QuestionsCubit extends Cubit<QuestionsState> {
  final GetQuestions getQuestions;

  QuestionsCubit(this.getQuestions) : super(QuestionsInitial());

  void fetchQuestions() async {
    emit(QuestionsLoading());

    await Future.delayed(const Duration(seconds: 2));

    emit(QuestionsLoaded(getQuestions(NoParams())));
  }
}
