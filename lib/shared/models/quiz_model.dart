import 'models.dart';

enum Level { facil, medio, dificil, perito }

extension LevelStringExt on String {
  Level get levelParse => {
        "facil": Level.facil,
        "medio": Level.medio,
        "dificil": Level.dificil,
        "perito": Level.perito
      }[this]!;
}

extension LevelExt on Level {
  String get parse => {
        Level.facil: "facil",
        Level.medio: "medio",
        Level.dificil: "dificil",
        Level.perito: "perito",
      }[this]!;
}

class QuizModel {
  final String title;
  final List<QuestionModel> questions;
  final int questionsAnswered;
  final String image;
  final Level level;

  QuizModel(
      {this.questionsAnswered = 0,
      required this.image,
      required this.level,
      required this.title,
      required this.questions});

  factory QuizModel.fromMap(Map<String, dynamic> map) {
    return new QuizModel(
      title: map['title'] as String,
      questions: map['questions'] as List<QuestionModel>,
      questionsAnswered: map['questionsAnswered'] as int,
      image: map['image'] as String,
      level: map['level'].toString().levelParse,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'title': this.title,
      'questions': this.questions,
      'questionsAnswered': this.questionsAnswered,
      'image': this.image,
      'level': level.parse,
    } as Map<String, dynamic>;
  }
}
