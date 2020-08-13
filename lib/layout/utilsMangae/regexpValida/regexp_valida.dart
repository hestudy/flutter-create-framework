import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_create_framework/component/list_item_button.dart';
import 'package:flutter_create_framework/generated/l10n.dart';

class RegexpValida extends StatefulWidget {
  @override
  _RegexpValidaState createState() => _RegexpValidaState();
}

class _RegexpValidaState extends State<RegexpValida> {

  bool valida = false;
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).regular),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: S.of(context).regexp_hint
              ),
              controller: textEditingController,
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            alignment: Alignment.center,
            child: AnimatedCrossFade(firstChild: Icon(Icons.cancel,color: Colors.red,), secondChild: Icon(Icons.check_circle,color: Colors.green,), crossFadeState: valida?CrossFadeState.showSecond:CrossFadeState.showFirst, duration: Duration(milliseconds: 500)),
          ),
          ListItemButton(text: S.of(context).regexp_phone, onTap: (){
            if(RegexUtil.isMobileSimple(textEditingController.text)){
              setState(() {
                valida = true;
              });
            }else{
              setState(() {
                valida = false;
              });
            }
          }),
          ListItemButton(text: S.of(context).regexp_email, onTap: (){
            if(RegexUtil.isEmail(textEditingController.text)){
              setState(() {
                valida = true;
              });
            }else{
              setState(() {
                valida = false;
              });
            }
          }),
        ],
      ),
    );
  }
}
