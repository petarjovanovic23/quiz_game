import 'package:flutter_test/flutter_test.dart';
import 'package:quiz_game/quiz/data/models/question_model.dart';
import 'package:quiz_game/quiz/domain/entities/question.dart';

void main() {
  const tQuestionModel = QuestionModel(description: 'Test', image: 'Test image');

  test('Should check if QuestionModel extends Question', () {
    expect(tQuestionModel, isA<Question>());
  });
}
