// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'zh';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "address" : MessageLookupByLibrary.simpleMessage("地址"),
    "address_warning" : MessageLookupByLibrary.simpleMessage("请输入地址"),
    "app_name" : MessageLookupByLibrary.simpleMessage("Flutter快速搭建框架"),
    "change_language" : MessageLookupByLibrary.simpleMessage("切换语言"),
    "edit_data" : MessageLookupByLibrary.simpleMessage("修改数据"),
    "email" : MessageLookupByLibrary.simpleMessage("邮箱"),
    "home_title" : MessageLookupByLibrary.simpleMessage("示例"),
    "mock" : MessageLookupByLibrary.simpleMessage("mock请求"),
    "mock_message" : MessageLookupByLibrary.simpleMessage("此处数据并非请求获取，而是设置了mock后，拦截并返回设置好的数据"),
    "phone" : MessageLookupByLibrary.simpleMessage("手机号"),
    "phone_warning" : MessageLookupByLibrary.simpleMessage("请输入手机号"),
    "state_manage" : MessageLookupByLibrary.simpleMessage("状态管理"),
    "username" : MessageLookupByLibrary.simpleMessage("用户名"),
    "username_warning" : MessageLookupByLibrary.simpleMessage("请输入用户名")
  };
}
