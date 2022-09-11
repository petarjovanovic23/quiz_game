import 'package:quiz_game/core/usecases/usecase.dart';
import 'package:quiz_game/quiz/domain/repositories/questions_repository.dart';

import '../entities/question.dart';

class GetQuestions extends UseCase<Questions, NoParams> {
  final QuestionsRepository questionsRepository;

  GetQuestions(this.questionsRepository);

  @override
  Questions call(NoParams params) {
    return questionsRepository.getQuestions();
  }
}
