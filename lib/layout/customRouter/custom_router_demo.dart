import 'package:flutter/material.dart';
import 'package:flutter_create_framework/generated/l10n.dart';
import 'package:flutter_create_framework/util/router_util.dart';

class CustomRouterDemo extends StatefulWidget {
  @override
  _CustomRouterDemoState createState() => _CustomRouterDemoState();
}

class _CustomRouterDemoState extends State<CustomRouterDemo> {
  String _content = '';

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    switch(argument){
      case 'slide':
        setState(() {
          _content = S.of(context).slider_router;
        });
        break;
      case 'fade':
        setState(() {
          _content = S.of(context).fade_router;
        });
        break;
      case 'scale':
        setState(() {
          _content = S.of(context).scale_router;
        });
        break;
      case 'rotation':
        setState(() {
          _content = S.of(context).rotation_router;
        });
        break;
      case 'rotationScale':
        setState(() {
          _content = S.of(context).rotation_scale_router;
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).custom_router_demo),
      ),
      body: Center(
        child: Text(_content),
      ),
    );
  }
}
