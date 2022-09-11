import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:quiz_game/core/dummydata/dummy_questions.dart';
import 'package:quiz_game/quiz/data/datasources/questions_local_datasource.dart';
import 'package:quiz_game/quiz/data/repositories/questions_repository_impl.dart';

class MockQuestionsLocalDatasource extends Mock implements QuestionsLocalDatasource {}

void main() {
  late MockQuestionsLocalDatasource mockQuestionsLocalDatasource;
  late QuestionsRepositoryImpl sut;

  setUp(() {
    mockQuestionsLocalDatasource = MockQuestionsLocalDatasource();
    sut = QuestionsRepositoryImpl(mockQuestionsLocalDatasource);
  });

  test('Should return the dummy questions data', () {
    when(() => mockQuestionsLocalDatasource.getDummyQuestions()).thenReturn(DummyQuestions.dummyQuestions);

    final result = sut.getQuestions();

    verify(() => mockQuestionsLocalDatasource.getDummyQuestions());
    expect(result, DummyQuestions.dummyQuestions);
  });
}
