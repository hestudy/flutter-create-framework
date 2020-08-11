import 'package:flutter/material.dart';
import 'package:flutter_create_framework/component/list_item_button.dart';
import 'package:flutter_create_framework/generated/l10n.dart';
import 'package:flutter_create_framework/provider/user_provider.dart';
import 'package:provider/provider.dart';

class EditStateManage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String username = '';
  String phone = '';
  String address = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).edit_data),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                initialValue: context.watch<UserProvider>().username,
                decoration: InputDecoration(labelText: S.of(context).username),
                onSaved: (value) {
                  username = value;
                },
                validator: (String value) {
                  return value.length >= 0 ? null : S.of(context).username_warning;
                }
              ),
              TextFormField(
                initialValue: context.watch<UserProvider>().phone,
                decoration: InputDecoration(labelText: S.of(context).phone),
                onSaved: (value) {
                  phone = value;
                },
                validator: (String value) {
                  return value.length >= 0 ? null : S.of(context).phone_warning;
                }
              ),
              TextFormField(
                initialValue: context.watch<UserProvider>().address,
                decoration: InputDecoration(labelText: S.of(context).address),
                onSaved: (value) {
                  address = value;
                },
                validator: (String value) {
                  return value.length >= 0 ? null : S.of(context).address_warning;
                }
              ),
              ListItemButton(text: S.of(context).edit_data, onTap: (){
                if(_formKey.currentState.validate()){
                  _formKey.currentState.save();
                  context.read<UserProvider>().setUserName(username);
                  context.read<UserProvider>().setPhone(phone);
                  context.read<UserProvider>().setAddress(address);
                  Navigator.of(context).pop();
                }
              })
            ],
          ),
          key: _formKey,
        ),
      ),
    );
  }
}
