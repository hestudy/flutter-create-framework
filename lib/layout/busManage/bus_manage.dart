import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_create_framework/component/list_item_button.dart';
import 'package:flutter_create_framework/generated/l10n.dart';
import 'package:flutter_create_framework/util/bus_util.dart';

class BusManage extends StatefulWidget {
  @override
  _BusManageState createState() => _BusManageState();
}

class _BusManageState extends State<BusManage> {
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initBus();
  }

  initBus() {
//    注册事件接收
    BusUtil.on('send_event', (data, callback) {
//      Toast显示数据
      BotToast.showText(text: data);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).bus),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration:
                    InputDecoration(hintText: S.of(context).input_send_message),
                controller: textEditingController,
              ),
              ListItemButton(
                  text: S.of(context).send_event,
                  onTap: () {
//                发送事件
                    BusUtil.emit('send_event', textEditingController.text);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
