import 'package:appwrite/appwrite.dart';
import 'package:dio/dio.dart';

class Server {
  static const endpoint = 'https://192.168.1.102:80/v1';
  static const projectid = '60cc0aeac3130';
  static const collectionid = '60cc0e09f05e6';

  static Future<String> signup(
      String email, String password, String name) async {
    String uid = '0';
    String errorMessage;
    Client client = Client();
    client
            .setEndpoint(endpoint) // Your API Endpoint
            .setProject(projectid)
            .setSelfSigned() // Your project ID
        ;

    print(client.toString());
    Account account = Account(client);
    print(email);
    print(password);
    print(name);
    try {
      Response<dynamic> result = await account.create(
          email: '$email', password: '$password', name: '$name');
      print(result.toString());
      uid = result.data['registration'].toString();
      await signin(email, password);
    } on DioError catch (error) {
      print(error.message);
      switch (error.response!.data['code'].toString()) {
        case "429":
          errorMessage = "Too may request. Try again later";
          break;
        case "409":
          errorMessage = "Account Already Exists";
          break;
        case "401":
          errorMessage = "Unauthorized user";
          break;
        default:
          errorMessage = "Something went wrong";
      }

      return Future.error(errorMessage);
    }

    return uid;
  }

  static signin(String email, String password) async {
    String errorMessage;
    final Client client = Client();
    client
            .setEndpoint(endpoint) // Your API Endpoint
            .setProject(projectid)
            .setSelfSigned() // Your project ID
        ;

    Account account = Account(client);

    try {
      Response<dynamic> result = await account.createSession(
        email: email,
        password: password,
      );
      print(result);
      if (result.statusCode == 201) {
        print('create');
        return true;
      } else {
        print('failed to create user session');
        return false;
      }
    } on DioError catch (error) {
      print(error);

      switch (error.response!.data['code'].toString()) {
        case "429":
          errorMessage = "Too may request. Try again later";
          break;
        case "409":
          errorMessage = "Account Already Exists";
          break;
        case "401":
          errorMessage = "Invalid email / password";
          break;
        default:
          errorMessage = "Something went wrong";
      }
      return Future.error(errorMessage);
    }
  }

  static Future<bool> isSignedIn() async {
    try {
      return await getSession();
    } catch (e) {
      return Future.error(e);
    }
  }

  static Future<bool> getSession() async {
    final Client client = Client();
    client
            .setEndpoint(endpoint) // Your API Endpoint
            .setProject(projectid)
            .setSelfSigned() // Your project ID
        ;
    Account account = Account(client);
    try {
      Response<dynamic> result = await account.getSessions();
      if (result.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (error) {
      return Future.error(error);
    }
  }
}

// Get current session
