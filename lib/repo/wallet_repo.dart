import 'package:budgetist_kakeibo/models/user.dart';
import 'package:budgetist_kakeibo/models/wallet.dart';
import 'package:budgetist_kakeibo/resourse/server.dart';

class WalletRepo {
  static Future<String> createdoc(
    String name,
    String userid,
    int amount,
    int itemNo,
    int month,
    String createdtime,
  ) async {
    String id;
    bool team = await Server.getteam();
    if (team) {
      id = 'team:${User.teamid}';
    } else {
      id = 'user:${User.id}';
    }
    try {
      return await Server.createdocument(
          name, userid, amount, itemNo, month, createdtime, id);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  static Future<List<Wallet>> getDoc(int month) async {
    try {
      return await Server.getdocument(month);
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
