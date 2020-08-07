import 'package:shared_preferences/shared_preferences.dart';

class LocationStrogeUtil{

  Future<SharedPreferences> init()async{
    return await SharedPreferences.getInstance();
  }

  Future<dynamic> get(String key)async{
    SharedPreferences sharedPreferences = await init();
    return sharedPreferences.get(key);
  }

  Future<bool> set(String key,String value)async{
    SharedPreferences sharedPreferences = await init();
    return sharedPreferences.setString(key, value);
  }

  Future<bool> remove(String key)async{
    SharedPreferences sharedPreferences = await init();
    return sharedPreferences.remove(key);
  }

  Future<bool> clear()async{
    SharedPreferences sharedPreferences = await init();
    return sharedPreferences.clear();
  }

}