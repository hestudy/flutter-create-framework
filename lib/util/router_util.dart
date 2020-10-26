import 'package:flutter/material.dart';
import 'package:flutter_create_framework/router/router.dart';

dynamic _argument;

dynamic get argument => _argument;

setArgument(dynamic argument) {
  _argument = argument;
}

class RouterUtil {
  RouterUtil.pushNamed(BuildContext context, String name,
      {String mode = 'slide', dynamic argument = ''}) {
    Map<String, Widget Function(BuildContext)> routerList = myRouter(context);
    if (routerList.containsKey(name)) {
      setArgument(argument);
      Navigator.of(context)
          .push(AnimateRouter(routerList[name](context), mode));
    } else {
      throw FormatException("未寻找到命名路由");
    }
  }

  RouterUtil.pushReplacementNamed(BuildContext context, String name,
      {String mode = 'slide', dynamic argument = ''}) {
    Map<String, Widget Function(BuildContext)> routerList = myRouter(context);
    if (routerList.containsKey(name)) {
      setArgument(argument);
      Navigator.of(context)
          .pushReplacement(AnimateRouter(routerList[name](context), mode));
    } else {
      throw FormatException("未寻找到命名路由");
    }
  }

  RouterUtil.pushNamedAndRemoveUntil(BuildContext context, String name,
      {String mode = 'slide', dynamic argument = ''}) {
    Map<String, Widget Function(BuildContext)> routerList = myRouter(context);
    if (routerList.containsKey(name)) {
      setArgument(argument);
      Navigator.of(context).pushAndRemoveUntil(
          AnimateRouter(routerList[name](context), mode), (route) => false);
    } else {
      throw FormatException("未寻找到命名路由");
    }
  }
}

class AnimateRouter extends PageRouteBuilder {
  final Widget x;
  final String mode;

  AnimateRouter(this.x, this.mode)
      : super(
            transitionDuration: Duration(milliseconds: 500),
            pageBuilder: (BuildContext context, Animation<double> animation1,
                Animation<double> animation2) {
              return x;
            },
            transitionsBuilder: (BuildContext context,
                Animation<double> animation1,
                Animation<double> animation2,
                Widget child) {
              Widget routerWidget;
              switch (mode) {
                case 'slide':
                  routerWidget = SlideTransition(
                    child: child,
                    position: Tween<Offset>(
                            begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0))
                        .animate(CurvedAnimation(
                            parent: animation1, curve: Curves.ease)),
                  );
                  break;
                case 'fade':
                  routerWidget = FadeTransition(
                    child: child,
                    opacity: Tween(begin: 0.0, end: 1.0).animate(
                        CurvedAnimation(
                            parent: animation1, curve: Curves.linear)),
                  );
                  break;
                case 'scale':
                  routerWidget = ScaleTransition(
                    child: child,
                    scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                        parent: animation1, curve: Curves.linear)),
                  );
                  break;
                case 'rotation':
                  routerWidget = RotationTransition(
                    child: child,
                    turns: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                        parent: animation1, curve: Curves.linear)),
                  );
                  break;
                case 'rotationScale':
                  routerWidget = RotationTransition(
                    child: ScaleTransition(
                      child: child,
                      scale: Tween(begin: 0.0, end: 1.0).animate(
                          CurvedAnimation(
                              parent: animation1, curve: Curves.linear)),
                    ),
                    turns: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                        parent: animation1, curve: Curves.linear)),
                  );
                  break;
              }
              return routerWidget;
            });
}
