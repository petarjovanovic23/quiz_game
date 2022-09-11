import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_game/injection_container.dart' as di;
import 'package:quiz_game/quiz/presentation/bloc/questions_cubit.dart';

import 'injection_container.dart';

void main() {
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: BlocProvider(
          create: (_) => sl<QuestionsCubit>(),
          child: BlocBuilder<QuestionsCubit, QuestionsState>(
            builder: (context, state) {
              if (state is QuestionsInitial) {
                return buildButton(context);
              } else if (state is QuestionsLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is QuestionsLoaded) {
                return buildQuestions(state);
              }
              return const Placeholder();
            },
          ),
        ),
      ),
    );
  }

  Column buildQuestions(QuestionsLoaded state) {
    return Column(
      children: [
        for (var question in state.questions) Text(question.description),
      ],
    );
  }

  Center buildButton(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () => context.read<QuestionsCubit>().fetchQuestions(),
        child: const Text('Click to get questions'),
      ),
    );
  }
}
