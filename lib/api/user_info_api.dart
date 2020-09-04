import 'package:dio/dio.dart';
import 'package:flutter_create_framework/util/request_util.dart';

Future<Response> UserInfo()async{
  return await Request().get("/userinfo");
}