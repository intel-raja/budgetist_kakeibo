import 'package:budgetist_kakeibo/resourse/server.dart';

class UserRepo {
  UserRepo();

  Future<String> usersignup(String email, String password, String name) async {
    try {
      return await Server.signup(email, password, name);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<String> usersignin(String email, String password) async {
    try {
      return await Server.signin(email, password);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<bool> userissingedin() async {
    try {
      return await Server.isSignedIn();
    } catch (e) {
      print(e);
      return Future.error(e.toString());
    }
  }
}
