import 'package:flutter/material.dart';
import 'package:flutter_create_framework/generated/l10n.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).home_title),
        actions: <Widget>[
          FlatButton(onPressed: (){
            Navigator.of(context).pushReplacementNamed("/changeLanguage");
          }, child: Text(S.of(context).change_language))
        ],
      ),
    );
  }
}



