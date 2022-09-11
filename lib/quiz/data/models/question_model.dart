import 'package:quiz_game/quiz/domain/entities/question.dart';

class QuestionModel extends Question {
  const QuestionModel({
    required String description,
    required String image,
  }) : super(description: description, image: image);
}
