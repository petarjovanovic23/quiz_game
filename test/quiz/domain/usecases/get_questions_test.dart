import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:quiz_game/core/usecases/usecase.dart';
import 'package:quiz_game/quiz/domain/entities/question.dart';
import 'package:quiz_game/quiz/domain/repositories/questions_repository.dart';
import 'package:quiz_game/quiz/domain/usecases/get_questions.dart';

class MockQuestionsRepository extends Mock implements QuestionsRepository {}

void main() {
  late GetQuestions usecase;
  late MockQuestionsRepository mockQuestionsRepository;

  setUp(() {
    mockQuestionsRepository = MockQuestionsRepository();
    usecase = GetQuestions(mockQuestionsRepository);
  });

  const testQuestion = Question(description: 'Test Q', image: 'Test Q image');
  const Questions testQuestions = [testQuestion];

  test('Should return questions from the repository', () {
    // arrange
    when(() => mockQuestionsRepository.getQuestions()).thenReturn(testQuestions);

    // act
    final result = usecase(NoParams());

    // assert
    expect(result, const Right(testQuestions));
    verify(() => mockQuestionsRepository.getQuestions());
    verifyNoMoreInteractions(mockQuestionsRepository);
  });
}
