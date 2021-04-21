import 'package:devquiz/shared/models/models.dart';

class HomeRepository{
  Future<UserModel> getUser() async{
    final response = await rootBundle.loadString('/database/user.json');
    final user = UserMode.fromMap(response);
    return user;
  }
  Future<List<QuizModel>> getQuizzes() async{}
}