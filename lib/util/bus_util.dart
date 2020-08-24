import 'package:fbroadcast/fbroadcast.dart';

class BusUtil{
//  发送事件封装
  BusUtil.emit(String name,dynamic data){
    FBroadcast.instance().broadcast(name,value: data);
  }

//  注册事件封装
  BusUtil.on(String name,Function result){
    FBroadcast.instance().register(name, (value, callback) {
      result(value,callback);
    });
  }
}