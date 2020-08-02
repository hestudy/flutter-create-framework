import 'package:dio/dio.dart';
import 'package:flutter_create_framework/util/request_util.dart';

class UserInfoApi{
  Future<Response> UserInfo()async{
    return await RequestUtil().init().get("/userinfo");
  }
}