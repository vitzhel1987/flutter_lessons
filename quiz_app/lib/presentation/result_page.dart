import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/app/navigation/routers/routes/home_route.dart';
import 'package:quiz_app/generated/l10n.dart';
import 'package:quiz_app/presentation/providers/app_provider.dart';
import 'package:quiz_app/domain/models/models.dart';

class ResultPage extends StatefulWidget {
  final QuizResult quizResult;
  final HomeRoute router;
  const ResultPage({
    super.key,
    required this.quizResult,
    required this.router,
  });

  @override
  State<StatefulWidget> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  HomeRoute get router => widget.router;
  QuizResult get quizResult => widget.quizResult;
  AppProvider get appProvider => AppProvider.of(context);

  bool isSaving = false;

  void _openMenu(BuildContext context, QuizResult quizResult) async {
    setState(() {
      isSaving = true;
    });
    await appProvider.databaseService.saveResult(
      UserScore(
        categoryName: quizResult.categoryName,
        questionsCount: quizResult.questionsCount,
        correctAnswersCount: quizResult.correctAnswersCount,
        userId: appProvider.authService.currentUser!.uid,
      ),
    );
    if (context.mounted) {
      context.go(router.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const .all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    S.of(context).you_passed_quiz,
                    style: theme.textTheme.headlineSmall!.copyWith(
                      fontSize: 30,
                      color: Colors.black87,
                      fontWeight: .bold,
                    ),
                  ),
                  const SizedBox(height: 32),

                  Text(
                    S.of(context).quiz_theme(quizResult.categoryName),
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: Colors.grey.shade600,
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(height: 16),

                  Text(
                    S.of(context).question_count(quizResult.questionsCount),
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: Colors.grey.shade600,
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(height: 16),
                  Text(
                    S.of(context).correct_answers_count(
                      quizResult.correctAnswersCount,
                    ),
                    style: theme.textTheme.bodyMedium!.copyWith(
                      fontSize: 18,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  const SizedBox(height: 32),

                  isSaving
                      ? Column(
                          mainAxisAlignment: .center,
                          crossAxisAlignment: .center,
                          children: [
                            const CircularProgressIndicator(
                              color: Colors.black,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              S.of(context).saving,
                              style: const TextStyle(fontSize: 16),
                            ),
                          ],
                        )
                      : ElevatedButton(
                          onPressed: () {
                            _openMenu(context, quizResult);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            minimumSize: const Size(0, 48),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            S.of(context).go_menu,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
