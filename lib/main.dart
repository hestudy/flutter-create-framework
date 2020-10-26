import 'dart:io';

import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_create_framework/config/theme_config.dart';
import 'package:flutter_create_framework/generated/l10n.dart';
import 'package:flutter_create_framework/provider/user_provider.dart';
import 'package:flutter_create_framework/router/router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:bot_toast/bot_toast.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await SpUtil.getInstance();
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=>UserProvider())
    ],child: MyApp(),)
  );
  if (Platform.isAndroid) {
    // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
    SystemUiOverlayStyle systemUiOverlayStyle =
    SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
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
      routes: myRouter(context),
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
