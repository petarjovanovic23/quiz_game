import 'package:quiz_game/core/dummydata/dummy_questions.dart';

import '../../domain/entities/question.dart';

abstract class QuestionsLocalDatasource {
  Questions getDummyQuestions();
}

class QuestionsLocalDatasourceImpl implements QuestionsLocalDatasource {
  @override
  Questions getDummyQuestions() {
    return DummyQuestions.dummyQuestions;
  }
}
