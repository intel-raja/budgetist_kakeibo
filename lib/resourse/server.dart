import 'dart:convert';

import 'package:appwrite/appwrite.dart';
import 'package:budgetist_kakeibo/models/user.dart';

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
      if (error.code == null) {
        return Future.error('Please Connect Internet');
      } else {
        return Future.error(error.message.toString());
      }
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
      await account.createSession(
        email: email,
        password: password,
      );

      return 'success';
    } on AppwriteException catch (error) {
      if (error.code == null) {
        return Future.error('Please Connect Internet');
      } else {
        return Future.error(error.message.toString());
      }
    }
  }

  static Future<bool> isSignedIn() async {
    final result = await getSession();

    try {
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
    String? name;
    String id;

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
        print('get session: $result');
        name = result.data['name'].toString();
        id = result.data['\$id'].toString();
        print(id);
        print(result.data);
        print(name);
        User.name = name;
        User.id = id;
        return name;
      } else {
        return name!;
      }
    } on AppwriteException catch (error) {
      return Future.error(error.message.toString());
    }
  }

  static Future<Response> getdocument(String month) async {
    final Client client = Client();
    client
            .setEndpoint(endpoint) // Your API Endpoint
            .setProject(projectid)
            .setSelfSigned() // Your project ID
        ;
    Database db = Database(client);
    try {
      Response<dynamic> result = await db.listDocuments(
        collectionId: collectionid,
        filters: ['month=$month'],
        orderField: 'time',
        orderType: OrderType.asc,
      );
      return result;
    } on AppwriteException catch (error) {
      if (error.code == null) {
        return Future.error('Please Connect Internet');
      } else {
        return Future.error(error.message.toString());
      }
    }
  }

  static Future<bool> getteam() async {
    final Client client = Client();
    client
            .setEndpoint(endpoint) // Your API Endpoint
            .setProject(projectid) //
            .setSelfSigned() // Your project ID
        ;
    Teams teams = Teams(client);

    try {
      final result = await teams.list();

      final map = json.decode(result.toString());
      List<dynamic> data = map["teams"];
      if (data.length != 0) {
        User.teamid = data[0]['\$id'];
        print(data[0]['\$id']);
        return true;
      }
      return false;
    } on AppwriteException catch (e) {
      return Future.error('team error :${e.message.toString()}');
    }
  }

  static Future<String> deleteSession() async {
    final Client client = Client();
    client
            .setEndpoint(endpoint) // Your API Endpoint
            .setProject(projectid)
            .setSelfSigned() // Your project ID
        ;
    Account account = Account(client);
    try {
      await account.deleteSessions();
      return 'sucess';
    } on AppwriteException catch (error) {
      if (error.code == null) {
        return Future.error('Please Connect Internet');
      } else {
        return Future.error(error.message.toString());
      }
    }
  }

  static Future<String> createdocument(String name, double amount, int itemNo,
      int month, String createdtime, String id) async {
    final Client client = Client();
    client
            .setEndpoint(endpoint) // Your API Endpoint
            .setProject(projectid)
            .setSelfSigned() // Your project ID
        ;

    Database db = Database(client);

    try {
      Response<dynamic> result = await db.createDocument(
        collectionId: collectionid,
        data: {
          'name': name,
          'amount': amount,
          'itemNo': itemNo,
          'month': month,
          'time': createdtime,
        },
        read: [id],
      );
      print(result.data);
      return result.toString();
    } on AppwriteException catch (error) {
      if (error.code == null) {
        return Future.error('Please Connect Internet');
      } else {
        return Future.error(error.message.toString());
      }
    }
  }
}
