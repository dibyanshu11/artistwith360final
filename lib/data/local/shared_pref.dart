import 'package:artist_replugged/core/constant/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class SharedPrefHelper {
  Future<void> saveReturnCode(int code);
  getReturnCode();
  Future<void> saveString(String key, String value);
  Future<void> saveInt(String key, int value);
  getStringByKey(String key, String defaultValue);
  getIntByKey(String key, int defaultValue);
  Future<void> removeByKey(String key);
  Future<void> saveBoolean(String key, bool value);
  bool getBoolByKey(String key, bool defaultValue);
}

class SharedPrefHelperImp implements SharedPrefHelper {
  SharedPreferences sharedPreferences;
  SharedPrefHelperImp({
    required this.sharedPreferences,
  });
  @override
  Future<void> saveReturnCode(int code) {
    return sharedPreferences.setInt(ArtistConstant.returnCode, code);
  }

  @override
  getReturnCode() {
    return sharedPreferences.getInt(ArtistConstant.returnCode);
  }

  @override
  Future<void> saveString(String key, String value) {
    return sharedPreferences.setString(key, value);
  }

  @override
  getStringByKey(String key, String defaultValue) {
    return sharedPreferences.getString(key) ?? defaultValue;
  }

  @override
  getIntByKey(String key, int defaultValue) {
    return sharedPreferences.getInt(key) ?? defaultValue;
  }

  @override
  Future<void> saveInt(String key, int value) {
    return sharedPreferences.setInt(key, value);
  }

  @override
  Future<void> removeByKey(String key) {
    return sharedPreferences.remove(key);
  }

  @override
  Future<void> saveBoolean(String key, bool value) {
    return sharedPreferences.setBool(key, value);
  }

  @override
  bool getBoolByKey(String key, bool defaultValue) {
    return sharedPreferences.getBool(key) ?? defaultValue;
  }
}
