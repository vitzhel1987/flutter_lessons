import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/app/navigation/routers/nested_routes/questions_route.dart';
import 'package:quiz_app/generated/l10n.dart';
import 'package:quiz_app/presentation/providers/app_provider.dart';
import 'package:quiz_app/presentation/widgets/questions_widget.dart';
import 'package:quiz_app/domain/models/models.dart';

class QuestionPage extends StatefulWidget {
  final QuestionRoute router;
  final String categoryName;
  const QuestionPage({
    super.key,
    required this.categoryName,
    required this.router,
  });

  @override
  State<StatefulWidget> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  AppProvider get appProvider => AppProvider.of(context);
  String get categoryName => widget.categoryName;
  QuestionRoute get router => widget.router;

  void _openResult(QuizResult quizResult) {
    context.push(
      router.resultQuizRoute.routeAbsolutePath,
      extra: {'result': quizResult},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).quiz), centerTitle: true),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const .all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: FutureBuilder(
                future: appProvider.quizService.fetchQuestions(categoryName),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final questions = snapshot.data;
                    if (questions!.isEmpty) {
                      return Text(
                        S.of(context).questions_is_empty,
                        style: const TextStyle(fontSize: 20),
                      );
                    }
                    return QuestionsWidget(
                      questionList: questions,
                      openResultPage: _openResult,
                    );
                  } else if (snapshot.hasError) {
                    return Text(
                      S.of(context).error(snapshot.error ?? S.of(context).unknown_error),
                      style: const TextStyle(fontSize: 20),
                    );
                  } else {
                    return Column(
                      mainAxisAlignment: .center,
                      crossAxisAlignment: .center,
                      children: [
                        const CircularProgressIndicator(color: Colors.black),
                        const SizedBox(height: 16),
                        Text(
                          S.of(context).loading,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ],
                    );
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
