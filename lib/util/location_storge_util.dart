import 'package:flustars/flustars.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocationStrogeUtil{

  Future<SharedPreferences> init()async{
    return await SharedPreferences.getInstance();
  }

  String get(String key){
    return SpUtil.getString(key);
  }

  Future<bool> set(String key,String value)async{
    return await SpUtil.putString(key, value);
  }

  Future<bool> remove(String key)async{
    return await SpUtil.remove(key);
  }

  Future<bool> clear()async{
    return await SpUtil.clear();
  }

}