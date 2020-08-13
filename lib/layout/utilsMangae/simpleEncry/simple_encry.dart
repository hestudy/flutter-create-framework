import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_create_framework/generated/l10n.dart';

class SimpleEncry extends StatefulWidget {
  @override
  _SimpleEncryState createState() => _SimpleEncryState();
}

class _SimpleEncryState extends State<SimpleEncry> {
  
  TextEditingController encryText = TextEditingController();
  TextEditingController decryText = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).simple_encry),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: S.of(context).input_encry
              ),
              controller: encryText,
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              OutlineButton(onPressed: (){
                decryText.text = EncryptUtil.encodeBase64(encryText.text);
              },child: Text(S.of(context).encry),),
              OutlineButton(onPressed: (){
                decryText.text = EncryptUtil.decodeBase64(encryText.text);
              },child: Text(S.of(context).decry),),
            ],
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: S.of(context).input_decry
              ),
              controller: decryText,
            ),
          ),
        ],
      ),
    );
  }
}
