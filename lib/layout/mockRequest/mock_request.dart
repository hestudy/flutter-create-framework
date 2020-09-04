import 'package:flutter/material.dart';
import 'package:flutter_create_framework/api/user_info_api.dart';
import 'package:flutter_create_framework/component/list_item_button.dart';
import 'package:flutter_create_framework/component/state_manage_panel.dart';
import 'package:flutter_create_framework/generated/l10n.dart';

class MockRequest extends StatefulWidget {
  @override
  _MockRequestState createState() => _MockRequestState();
}

class _MockRequestState extends State<MockRequest> {

  Map data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).mock),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Text(S.of(context).mock_message),
            ),
            StateManagePanel(title: S.of(context).username, content: data==null?'':data["username"]),
            StateManagePanel(title: S.of(context).email, content: data==null?'':data["email"]),
            StateManagePanel(title: S.of(context).address, content: data==null?'':data["address"]),
            ListItemButton(text: S.of(context).mock, onTap: (){
              getData();
            })
          ],
        ),
      ),
    );
  }

  void getData() {
    UserInfo().then((value){
      setState(() {
        data = value.data["data"];
      });
    });
  }
}
