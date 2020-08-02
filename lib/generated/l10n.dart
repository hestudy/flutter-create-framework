// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `FlutterCreateFrameWork`
  String get app_name {
    return Intl.message(
      'FlutterCreateFrameWork',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `example`
  String get home_title {
    return Intl.message(
      'example',
      name: 'home_title',
      desc: '',
      args: [],
    );
  }

  /// `switch the language`
  String get change_language {
    return Intl.message(
      'switch the language',
      name: 'change_language',
      desc: '',
      args: [],
    );
  }

  /// `State managemen`
  String get state_manage {
    return Intl.message(
      'State managemen',
      name: 'state_manage',
      desc: '',
      args: [],
    );
  }

  /// `mock request`
  String get mock {
    return Intl.message(
      'mock request',
      name: 'mock',
      desc: '',
      args: [],
    );
  }

  /// `username`
  String get username {
    return Intl.message(
      'username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `phone`
  String get phone {
    return Intl.message(
      'phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `address`
  String get address {
    return Intl.message(
      'address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Modify the data`
  String get edit_data {
    return Intl.message(
      'Modify the data',
      name: 'edit_data',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the user name`
  String get username_warning {
    return Intl.message(
      'Please enter the user name',
      name: 'username_warning',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your cell phone number`
  String get phone_warning {
    return Intl.message(
      'Please enter your cell phone number',
      name: 'phone_warning',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the address`
  String get address_warning {
    return Intl.message(
      'Please enter the address',
      name: 'address_warning',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}