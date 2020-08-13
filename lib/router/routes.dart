import 'package:flutter_create_framework/layout/home.dart';
import 'package:flutter_create_framework/layout/mockRequest/mock_request.dart';
import 'package:flutter_create_framework/layout/stateManage/edit_state_manage.dart';
import 'package:flutter_create_framework/layout/stateManage/state_manage.dart';
import 'package:flutter_create_framework/layout/utilsMangae/regexpValida/regexp_valida.dart';
import 'package:flutter_create_framework/layout/utilsMangae/simpleEncry/simple_encry.dart';
import 'package:flutter_create_framework/layout/utilsMangae/utils_manage.dart';
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
    },
    {
      "path":"/mockRequest",
      "view":MockRequest()
    },
    {
      "path":"/utilsManage",
      "view":UtilsManage()
    },
    {
      "path":"/regexpValida",
      "view":RegexpValida()
    },
    {
      "path":"/simpleEncry",
      "view":SimpleEncry()
    }
  ];
}