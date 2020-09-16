import 'package:flutter/material.dart';
import 'package:flutter_create_framework/component/list_item_button.dart';
import 'package:flutter_create_framework/generated/l10n.dart';
import 'package:flutter_create_framework/util/router_util.dart';

class CustomRouter extends StatefulWidget {
  @override
  _CustomRouterState createState() => _CustomRouterState();
}

class _CustomRouterState extends State<CustomRouter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).custom_router),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          ListItemButton(text: S.of(context).slider_router, onTap: (){
            RouterUtil.pushNamed(context, "/customRouterDemo",mode:'slide',argument: 'slide');
          }),
          ListItemButton(text: S.of(context).fade_router, onTap: (){
            RouterUtil.pushNamed(context, "/customRouterDemo",mode:'fade',argument: 'fade');
          }),
          ListItemButton(text: S.of(context).scale_router, onTap: (){
            RouterUtil.pushNamed(context, "/customRouterDemo",mode:'scale',argument: 'scale');
          }),
          ListItemButton(text: S.of(context).rotation_router, onTap: (){
            RouterUtil.pushNamed(context, "/customRouterDemo",mode:'rotation',argument: 'rotation');
          }),
          ListItemButton(text: S.of(context).rotation_scale_router, onTap: (){
            RouterUtil.pushNamed(context, "/customRouterDemo",mode:'rotationScale',argument: 'rotationScale');
          }),
        ],
      ),
    );
  }
}
