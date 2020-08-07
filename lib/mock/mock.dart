import 'package:dio/dio.dart';
import 'package:flutter_create_framework/mock/role/user_info_role.dart';

class Mock{
  List roles = [
    ...UserInfoRole()
  ];

  Map MockServer(RequestOptions options){
    bool match = false;
    Map responseData;
    for(var mockRole in roles){
      if(options.path==mockRole["path"]&&options.method==mockRole["method"]){
        match = true;
        responseData = mockRole["response"];
      }
    }
    return {
      "match":match,
      "response":responseData
    };
  }

}