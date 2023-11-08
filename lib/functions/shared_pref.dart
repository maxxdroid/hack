import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper{
  static String iDKey = 'UserIdKey';

  Future<bool> saveUserID(String getUserId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(iDKey, getUserId);
  }

  //get

  Future<String?> getUserID() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(iDKey);
  }
}