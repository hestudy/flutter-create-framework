import 'package:flutter/material.dart';
import 'package:flutter_create_framework/component/list_item_button.dart';
import 'package:flutter_create_framework/generated/l10n.dart';
import 'package:flutter_create_framework/util/location_storge_util.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context){

    initLanguage()async{
      String language = LocationStrogeUtil().get("language");
      if(language==null){
        await LocationStrogeUtil().set("language", "zh");
        S.load(Locale("zh"));
      }else{
        S.load(Locale(language));
      }
    }

    initLanguage();
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
          ListItemButton(text: S.of(context).state_manage, onTap: (){
            Navigator.of(context).pushNamed("/stateManage");
          }),
          ListItemButton(text: S.of(context).mock, onTap: (){
            Navigator.of(context).pushNamed("/mockRequest");
          })
        ],
      ),
    );
  }
}




