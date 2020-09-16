import 'package:flutter/material.dart';
import 'package:flutter_create_framework/component/list_item_button.dart';
import 'package:flutter_create_framework/generated/l10n.dart';
import 'package:flutter_create_framework/util/location_storge_util.dart';
import 'package:flutter_create_framework/util/router_util.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  initLanguage()async{
    String language = LocationStrogeUtil().get("language");
    if(language==null||language.isEmpty){
      await LocationStrogeUtil().set("language", "zh");
      S.load(Locale("zh"));
    }else{
      S.load(Locale(language));
    }
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    initLanguage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).home_title),
        actions: <Widget>[
          FlatButton(onPressed: (){
            Navigator.of(context).pushReplacementNamed("/changeLanguage");
          }, child: Text(S.of(context).change_language)),
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          // 主页示例按钮
          ListItemButton(text: S.of(context).state_manage, onTap: (){
            Navigator.of(context).pushNamed("/stateManage");
          }),
          ListItemButton(text: S.of(context).mock, onTap: (){
            Navigator.of(context).pushNamed("/mockRequest");
          }),
          ListItemButton(text: S.of(context).utils, onTap: (){
            Navigator.of(context).pushNamed("/utilsManage");
          }),
          ListItemButton(text: S.of(context).bus, onTap: (){
            Navigator.of(context).pushNamed("/busManage");
          }),
          ListItemButton(text: S.of(context).custom_router, onTap: (){
            RouterUtil.pushNamed(context, "/customRouter");
          }),
        ],
      ),
    );
  }
}





