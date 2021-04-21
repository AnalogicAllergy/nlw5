import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/home/home_state.dart';

import '../shared/models/models.dart';

class HomeController {
  HomeState state = HomeState.empty;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() {
    user = UserModel(
        name: "Willian S.",
        photoUrl: "https://avatars.githubusercontent.com/u/46244572?v=4");
  }

  void getQuizes() {
    quizzes = [
      QuizModel(
        title: "NLW 5 Flutter",
        questions: [
          QuestionModel(
            title: "Esta curtindo",
            answers: [
              AnswerModel(title: "Nops"),
              AnswerModel(title: "Nao"),
              AnswerModel(title: "Nao mesmo"),
              AnswerModel(title: "Com certeza", isRight: true),
            ],
          ),
          QuestionModel(
            title: "Esta curtindo",
            answers: [
              AnswerModel(title: "Nops"),
              AnswerModel(title: "Nao"),
              AnswerModel(title: "Nao mesmo"),
              AnswerModel(title: "Com certeza", isRight: true),
            ],
          ),
        ],
        level: Level.facil,
        image: AppImages.data,
      ),
      QuizModel(
        title: "Flutter basics",
        questions: [
          QuestionModel(
            title: "Esta curtindo",
            answers: [
              AnswerModel(title: "Nops"),
              AnswerModel(title: "Nao"),
              AnswerModel(title: "Nao mesmo"),
              AnswerModel(title: "Com certeza", isRight: true),
            ],
          ),
        ],
        level: Level.facil,
        image: AppImages.laptop,
      ),
      QuizModel(
        title: "Flutter intermediate",
        questions: [
          QuestionModel(
            title: "Esta curtindo",
            answers: [
              AnswerModel(title: "Nops"),
              AnswerModel(title: "Nao"),
              AnswerModel(title: "Nao mesmo"),
              AnswerModel(title: "Com certeza", isRight: true),
            ],
          ),
        ],
        level: Level.facil,
        image: AppImages.check,
      ),
      QuizModel(
        title: "Flutter advanced",
        questions: [
          QuestionModel(
            title: "Esta curtindo",
            answers: [
              AnswerModel(title: "Nops"),
              AnswerModel(title: "Nao"),
              AnswerModel(title: "Nao mesmo"),
              AnswerModel(title: "Com certeza", isRight: true),
            ],
          ),
        ],
        level: Level.facil,
        image: AppImages.hierarchy,
      ),
    ];
  }
}
