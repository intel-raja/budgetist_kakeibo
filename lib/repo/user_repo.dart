import 'package:budgetist_kakeibo/resourse/server.dart';

class UserRepo {
  static Future<String> usersignup(
      String email, String password, String name) async {
    try {
      return await Server.signup(email, password, name);
    } catch (e) {
      print('userrepo:$e');
      return Future.error(e.toString());
    }
  }

  static Future<String> usersignin(String email, String password) async {
    try {
      return await Server.signin(email, password);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  static Future<bool> userissignedin() async {
    try {
      return await Server.isSignedIn();
    } catch (e) {
      print('userrepo:$e');
      return false;
    }
  }

  static Future<String> userdeleteSession() async {
    try {
      return await Server.deleteSession();
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
