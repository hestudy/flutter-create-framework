import 'package:flutter/material.dart';
import 'package:flutter_create_framework/router/routes.dart';

Map<String,Widget Function(BuildContext)> Router(BuildContext context){
  Map<String,Widget Function(BuildContext)> router = {};
  for(var route in Routes()){
    router[route["path"]] = (context)=>route["view"];
  }
  return router;
}