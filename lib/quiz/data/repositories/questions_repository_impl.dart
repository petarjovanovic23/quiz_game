import 'package:quiz_game/quiz/data/datasources/questions_local_datasource.dart';
import 'package:quiz_game/quiz/domain/repositories/questions_repository.dart';

import '../../domain/entities/question.dart';

class QuestionsRepositoryImpl implements QuestionsRepository {
  final QuestionsLocalDatasource questionsLocalDatasource;

  QuestionsRepositoryImpl(this.questionsLocalDatasource);

  @override
  Questions getQuestions() {
    return questionsLocalDatasource.getDummyQuestions();
  }
}
