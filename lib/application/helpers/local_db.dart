import '../app/app.locator.dart';
import '../services/local_db_service.dart';

final _localDBService = locator<LocalDBService>();

class LocalDB {
  static Future remove() async {
    _localDBService.removeUser();
    _localDBService.removeToken();
  }
}
