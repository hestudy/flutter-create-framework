# 功能模块

## 网络请求

### 请求域名

位于：`/lib/util/request_util.dart`

![image-20200812174938462](./utils.assets/image-20200812174938462.png)



### 请求超时

位于：`/lib/util/request_util.dart`

![image-20200812175247159](./utils.assets/image-20200812175247159.png)

### 发送请求

参考示例文件`/lib/api/user_info_api.dart`，新建个类似的示例：

```dart
import 'package:dio/dio.dart';
import 'package:flutter_create_framework/util/request_util.dart';

class UserInfoApi{
  Future<Response> UserInfo()async{
    return await RequestUtil().init().get("/userinfo");
  }
}
```

然后在业务代码中调用该方法即可，参考示例文件：`/lib/layout/mockRequest/mock_request.dart`

```dart
UserInfoApi().UserInfo().then((value){
  setState(() {
     data = value.data["data"];
  });
});
```

## 国际化

### 安装插件

插件可以帮助我们快速的生成国际化代码，以Android Studio为例：

`File --> Settings… --> Plugins --> 搜索“flutter Intl”，安装该插件，重启AndroidStudio`

### 配置与初始化

#### 配置

pubspec.yaml文件新增本地化依赖：

```yaml
dependencies:
    // Other dependencies...
    flutter_localizations:
        sdk: flutter
```

然后flutter pub get获取该依赖

#### 工程初始化

在菜单栏的Tool下找到Flutter Intl 并选择Initalize for the project，配置结束之后，会自动在 pubspec.yaml中增加以下字段：

```yaml
flutter_intl:  
    enabled: true
```

会在lib目录下增加 generated 和 l10n两个包，框架下的目录就是如此生成的

#### 代码初始化

框架已经做了这一步，想深入的可以了解一下

```dart
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      //supportedLocales: S.delegate.supportedLocales,
      // 设置中文为首选项
      supportedLocales: S.delegate.supportedLocales,
      // 获取翻译文案的内容需要在能获取到上下文的前提下才能生效，也就是说只能对MaterialApp
      // 的子组件才会生效，所以下面的方法设置动态Title是不行的，需要使用回调方法onGenerateTitle
      //title: S.of(context).app_name,
      onGenerateTitle: (context) => S.of(context).app_name,
      //home: MyHomePage(title: S.of(context).main_message),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
```

### 抽取字符串

#### 新建需要支持的语言文件

在lib/I10n文件夹右键 --> New --> Arb File，输入对应的locale code，如“zh”。
或者在Tools --> Flutter Intl --> Add Locale，效果是一样的。

#### 抽取字符串

选中字符串或者在字符串后面按快捷键“Alt + Enter” --> Extract to ARB file
勾选该字符串要抽取到哪些Arb文件，其实就是在各个arb文件下添加相应的字符串字段，需要到对应的arb文件修改成相应语言的字符串。

### 使用

在需要配置国际化的地方调用`S.of(context).字符串字段`即可

一些方法：

```dart
# 强制使用某种语言
S.load(Locale('de', 'DE'));
# 获取当前语言
Intl.getCurrentLocale()
```

## Mock服务

该模块的核心在于 [dio](https://pub.flutter-io.cn/packages/dio)提供的返回自定义数据功能，代码位于：`/lib/util/request_util.dart`

![image-20200812182417960](./utils.assets/image-20200812182417960.png)

### 增加mock规则

该模块通过 [faker](https://pub.flutter-io.cn/packages/faker)包，可以定义十分真实的返回数据

示例代码位于：`/lib/mock/role/user_info_role.dart`

```dart
import 'package:faker/faker.dart';

List UserInfoRole(){
  return [
    {
      "path":'/userinfo',
      "method":"GET",
      "response":{
        "status":0,
        "data":{
          "username":faker.internet.userName(),
          "email":faker.internet.email(),
          "address":faker.address.city()
        }
      }
    }
  ];
}
```

其中`path`和`method`就是匹配的规则，每一次的request的请求都会遍历一次规则，符合规则即返回自定义的返回数据

## 路由

