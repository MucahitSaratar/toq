import 'package:shared_preferences/shared_preferences.dart';

class LocalUtils {
  Future<String?> getSession() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString("sessionToken");
    print("in service $token");
    return token;
  }
}
