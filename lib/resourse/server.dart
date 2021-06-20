import 'package:appwrite/appwrite.dart';

class Server {
  static const endpoint = 'https://192.168.1.102:80/v1';
  static const projectid = '60cc0aeac3130';
  static const collectionid = '60cc0e09f05e6';

  static Future<String> signup(
      String email, String password, String name) async {
    final Client client = Client();
    client
            .setEndpoint(endpoint) // Your API Endpoint
            .setProject(projectid)
            .setSelfSigned() // Your project ID
        ;

    Account account = Account(client);
    try {
      await account.create(
          email: '$email', password: '$password', name: '$name');

      await signin(email, password);
    } on AppwriteException catch (error) {
      return Future.error(error.message.toString());
    }

    return 'success';
  }

  static signin(String email, String password) async {
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

      if (result.statusCode == 201) {
        return true;
      } else {
        return false;
      }
    } on AppwriteException catch (error) {
      return Future.error(error.message.toString());
    }
  }

  static Future<bool> isSignedIn() async {
    try {
      final result = await getSession();
      // ignore: unnecessary_null_comparison
      if (result != null) {
        return true;
      } else {
        return false;
      }
    } on AppwriteException catch (error) {
      print(error.message);
      return false;
    }
  }

  static Future<String> getSession() async {
    String? uid;
    final Client client = Client();
    client
            .setEndpoint(endpoint) // Your API Endpoint
            .setProject(projectid)
            .setSelfSigned() // Your project ID
        ;
    Account account = Account(client);
    try {
      Response<dynamic> result = await account.get();
      if (result.statusCode == 200) {
        uid = result.data['\$id'].toString();
        print(uid);
        return uid;
      } else {
        return uid!;
      }
    } on AppwriteException catch (error) {
      return Future.error(error.message.toString());
    }
  }
}
