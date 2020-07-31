import 'package:flutter_create_framework/layout/home.dart';
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
    }
  ];
}