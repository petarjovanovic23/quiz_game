import 'package:equatable/equatable.dart';

class Question extends Equatable {
  final String description;
  final String image;

  const Question({
    required this.description,
    required this.image,
  });

  @override
  List<Object?> get props => [description, image];
}

typedef Questions = List<Question>;
