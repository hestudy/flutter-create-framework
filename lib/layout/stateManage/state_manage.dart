import 'package:flutter/material.dart';
import 'package:flutter_create_framework/component/list_item_button.dart';
import 'package:flutter_create_framework/component/state_manage_panel.dart';
import 'package:flutter_create_framework/generated/l10n.dart';
import 'package:flutter_create_framework/provider/user_provider.dart';
import 'package:provider/provider.dart';

class StateManage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).state_manage),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            StateManagePanel(title: S.of(context).username, content: context.watch<UserProvider>().username),
            StateManagePanel(title: S.of(context).phone, content: context.watch<UserProvider>().phone),
            StateManagePanel(title: S.of(context).address, content: context.watch<UserProvider>().address),
            ListItemButton(text: S.of(context).edit_data, onTap: (){
              Navigator.of(context).pushNamed("/editStateManage");
            })
          ],
        ),
      ),
    );
  }
}
