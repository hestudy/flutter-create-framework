import 'package:dio/dio.dart';
import 'package:flutter_create_framework/mock/mock.dart';
import 'package:flutter_create_framework/util/logger_util.dart';

Dio Request(){
  Dio dio = Dio();
  // 设置请求域名
  dio.options.baseUrl = "https://test.hfybbs.vip/api";
  // 设置超时时间
  dio.options.connectTimeout = 5000;
  dio.options.receiveTimeout = 5000;
  dio.interceptors.add(InterceptorsWrapper(
      onRequest: (RequestOptions options) async {
        Map optionsMap = {
          "baseUrl":options.baseUrl,
          "path":options.path,
          "method":options.method,
          "data":options.data,
          "headers":options.headers,
        };
        LoggerUtil.d(optionsMap);
        // 在请求被发送之前做一些事情
        Map mockResult = Mock().MockServer(options);
        // 遍历mock规则
        if(mockResult["match"]){
          return dio.resolve(mockResult["response"]);
        }else{
          return options; //continue
        }
        // 如果你想完成请求并返回一些自定义数据，可以返回一个`Response`对象或返回`dio.resolve(data)`。
        // 这样请求将会被终止，上层then会被调用，then中返回的数据将是你的自定义数据data.
        //
        // 如果你想终止请求并触发一个错误,你可以返回一个`DioError`对象，或返回`dio.reject(errMsg)`，
        // 这样请求将被中止并触发异常，上层catchError会被调用。
      },
      onResponse: (Response response) async {
        // 在返回响应数据之前做一些预处理
        LoggerUtil.d(response.data);
        return response; // continue
      },
      onError: (DioError e) async {
        // 当请求失败时做一些预处理
        LoggerUtil.e(e);
        return e; //continue
      }
  ));
  return dio;
}