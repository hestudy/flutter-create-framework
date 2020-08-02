import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_create_framework/generated/l10n.dart';
import 'package:flutter_create_framework/util/location_storge_util.dart';
import 'package:intl/intl.dart';

class ChangeLanguage extends StatefulWidget {
  @override
  _ChangeLanguageState createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    changeLanguage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(S.of(context).change_language),
      ),
    );
  }

  void changeLanguage()async {
    String language = Intl.getCurrentLocale();
    if(language=='zh'){
      await LocationStrogeUtil().set("language", "en");
      await S.load(Locale("en"));
    }else{
      await LocationStrogeUtil().set("language", "zh");
      await S.load(Locale("zh"));
    }
    Timer(Duration(milliseconds: 800), (){
      Navigator.of(context).pushReplacementNamed("/");
    });
  }
}

