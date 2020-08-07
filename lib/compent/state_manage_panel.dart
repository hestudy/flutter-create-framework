import 'package:flutter/material.dart';

class StateManagePanel extends StatelessWidget {

  final String title;
  final String content;

  const StateManagePanel({Key key,@required this.title,@required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(title+'：',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        SizedBox(width: 10,),
        Text(content)
      ],
    );
  }
}
