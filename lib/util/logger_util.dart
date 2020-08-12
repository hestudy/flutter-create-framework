import 'package:flutter_create_framework/config/server_config.dart';
import 'package:logger/logger.dart';

class LoggerUtil{
  LoggerUtil.v(dynamic v){
    if(ServerConfig().Debug()){
      Logger().v(v);
    }
  }
  // 调试
  LoggerUtil.d(dynamic d){
    if(ServerConfig().Debug()){
      Logger().d(d);
    }
  }
  // 信息
  LoggerUtil.i(dynamic i){
    if(ServerConfig().Debug()){
      Logger().i(i);
    }
  }
  // 错误
  LoggerUtil.e(dynamic e){
    if(ServerConfig().Debug()){
      Logger().e(e);
    }
  }
  // 警告
  LoggerUtil.w(dynamic w){
    if(ServerConfig().Debug()){
      Logger().w(w);
    }
  }
  // WTF
  LoggerUtil.wtf(dynamic wtf){
    if(ServerConfig().Debug()){
      Logger().wtf(wtf);
    }
  }
}