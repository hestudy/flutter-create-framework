import 'package:flutter/material.dart';
import 'package:flutter_create_framework/config/theme_config.dart';
import 'package:flutter_create_framework/generated/l10n.dart';
import 'package:flutter_create_framework/provider/user_provider.dart';
import 'package:flutter_create_framework/router/router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:bot_toast/bot_toast.dart';

void main(){
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=>UserProvider())
    ],child: MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeConfig(),
      initialRoute: "/",
      builder: BotToastInit(),
      navigatorObservers: [BotToastNavigatorObserver()],
      routes: Router(context),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: S.delegate.supportedLocales,

      // 获取翻译文案的内容需要在能获取到上下文的前提下才能生效，也就是说只能对MaterialApp
      // 的子组件才会生效，所以下面的方法设置动态Title是不行的，需要使用回调方法onGenerateTitle
      //title: S.of(context).app_name,
      onGenerateTitle: (context) => S.of(context).app_name,
    );
  }
}
