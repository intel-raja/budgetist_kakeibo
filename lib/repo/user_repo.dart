import 'package:budgetist_kakeibo/resourse/server.dart';

class UserRepo {
  final Server server;
  UserRepo(this.server);

  Future<String> usersignup(String email, String password, String name) async {
    try {
      return await server.signup(email, password, name);
    } catch (e) {
      return e.toString();
    }
  }

  Future<String> usersignin(String email, String password) async {
    try {
      return await server.signin(email, password);
    } catch (e) {
      return e.toString();
    }
  }

  Future<bool> userissingedin() async {
    try {
      return await server.isSignedIn();
    } catch (e) {
      print(e);
      return false;
    }
  }
}
