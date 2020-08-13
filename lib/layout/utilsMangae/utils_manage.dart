import 'package:flutter/material.dart';
import 'package:flutter_create_framework/component/list_item_button.dart';
import 'package:flutter_create_framework/generated/l10n.dart';
class UtilsManage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).utils),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          ListItemButton(text: S.of(context).regular, onTap: (){
            Navigator.of(context).pushNamed("/regexpValida");
          }),
          ListItemButton(text: S.of(context).simple_encry, onTap: (){
            Navigator.of(context).pushNamed("/simpleEncry");
          }),
        ],
      ),
    );
  }
}
