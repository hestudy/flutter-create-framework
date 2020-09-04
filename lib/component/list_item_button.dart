import 'package:flutter/material.dart';
// 主页示例按钮组件
class ListItemButton extends StatelessWidget {

  final String text;
  final Function onTap;

  const ListItemButton({Key key,@required this.text,@required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      alignment: Alignment.center,
      child: OutlineButton(onPressed: onTap,
        child: Text(text),
        splashColor: Colors.lightBlueAccent,
      ),
    );
  }
}
