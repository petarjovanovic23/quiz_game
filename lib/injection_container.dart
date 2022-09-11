import 'package:get_it/get_it.dart';
import 'package:quiz_game/quiz/data/datasources/questions_local_datasource.dart';
import 'package:quiz_game/quiz/data/repositories/questions_repository_impl.dart';
import 'package:quiz_game/quiz/domain/repositories/questions_repository.dart';
import 'package:quiz_game/quiz/domain/usecases/get_questions.dart';
import 'package:quiz_game/quiz/presentation/bloc/questions_cubit.dart';

final sl = GetIt.instance;

void init() {
  // Bloc
  sl.registerFactory(() => QuestionsCubit(sl()));

  // Usecase
  sl.registerLazySingleton(() => GetQuestions(sl()));

  // Repository
  sl.registerLazySingleton<QuestionsRepository>(() => QuestionsRepositoryImpl(sl()));

  // Datasources
  sl.registerLazySingleton<QuestionsLocalDatasource>(() => QuestionsLocalDatasourceImpl());
}
