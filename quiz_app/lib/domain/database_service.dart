import 'package:cloud_firestore/cloud_firestore.dart';
import 'models/models.dart';

abstract interface class DatabaseService {
  Future<void> saveResult(UserScore userScore);
  Future<List<UserScore>> fetchResults();
}


class DatabaseServiceImpl implements DatabaseService {
  final FirebaseFirestore firebaseFirestore;

  const DatabaseServiceImpl({required this.firebaseFirestore});

  @override
  Future<List<UserScore>> fetchResults() async {
    final event = await firebaseFirestore.collection("user_score").get();

    List<UserScore> userScores = [];

    for (var doc in event.docs) {
      userScores.add(UserScore.fromJson(doc.data()));
    }
    return userScores;
  }

  @override
  Future<void> saveResult(UserScore userScore) async {
    await firebaseFirestore.collection("user_score").add(userScore.toJson());
  }
} 