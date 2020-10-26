import 'package:flutter/material.dart';
import 'package:flutter_create_framework/router/routes.dart';

Map<String,Widget Function(BuildContext)> myRouter(BuildContext context){
  Map<String,Widget Function(BuildContext)> router = {};
  List<Map<String,dynamic>> screenRoutes = [];
  for(var route in Routes()){
    var path = route["path"];
    if(route["children"]!=null){
     TreeChildrenRouter(path, route["children"],screenRoutes);
    }else{
      router[route["path"]] = (context)=>route["view"];
    }
  }
  for(var route in screenRoutes){
    router[route["path"]] = (context)=>route["view"];
  }
  return router;
}

TreeChildrenRouter(String path,List<Map> routes,List<Map<String,dynamic>> screenRoutes){
  String rootPath = path;
  for(var route in routes){
    path=rootPath+route["path"];
    if(route["children"]!=null){
      TreeChildrenRouter(path, route["children"], screenRoutes);
    }else{
      screenRoutes.add({"path":path,"view":route["view"]});
    }
  }
}