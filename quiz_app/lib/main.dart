import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:quiz_app/domain/auth_service.dart';
import 'app/navigation/app_router.dart';
import 'app/navigation/quiz_app.dart';
import 'app/web/dio/dio_generator.dart';
import 'domain/database_service.dart';
import 'domain/quiz_service.dart';
import 'firebase_options.dart';

final _authService = AuthServiceImpl(firebaseAuth: FirebaseAuth.instance);
final _router = createRouter(authService: _authService);
final _dio = createDio('pRGGR6cDdJ8K3zyT47OSm43SnQtyothVepjaxJeh');
final _quizService = QuizServiceImpl(dio: _dio);
final _databaseService = DatabaseServiceImpl(
  firebaseFirestore: FirebaseFirestore.instance,
);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    QuizApp(
      router: _router,
      authService: _authService,
      quizService: _quizService,
      databaseService: _databaseService,
    ),
  );
}
