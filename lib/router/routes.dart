import 'package:flutter_create_framework/layout/home.dart';
import 'package:flutter_create_framework/layout/mockRequest/mock_request.dart';
import 'package:flutter_create_framework/layout/stateManage/edit_state_manage.dart';
import 'package:flutter_create_framework/layout/stateManage/state_manage.dart';
import 'package:flutter_create_framework/view/change_language_view.dart';

List<Map<String,dynamic>> Routes(){
  return [
    {
      "path":"/",
      "view":Home(),
    },
    {
      "path":"/changeLanguage",
      "view":ChangeLanguage(),
    },
    {
      "path":"/stateManage",
      "view":StateManage()
    },
    {
      "path":"/editStateManage",
      "view":EditStateManage()
    },
    {
      "path":"/mockRequest",
      "view":MockRequest()
    }
  ];
}