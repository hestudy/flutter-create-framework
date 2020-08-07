import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier{

//  用户名
  String _username = 'Test User';
  get username => _username;

  void setUserName(String username){
    _username = username;
    notifyListeners();
  }

//  手机号
  String _phone = '13243737777';
  get phone => _phone;

  void setPhone(String phone){
    _phone = phone;
  }

//  地址
  String _address = 'GuangZhou';
  get address => _address;

  void setAddress(String address){
    _address = address;
  }

}