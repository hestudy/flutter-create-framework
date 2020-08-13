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

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
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

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Here, the data is not requested, but after the mock is set up, the data is intercepted and returned`
  String get mock_message {
    return Intl.message(
      'Here, the data is not requested, but after the mock is set up, the data is intercepted and returned',
      name: 'mock_message',
      desc: '',
      args: [],
    );
  }

  /// `Tool library`
  String get utils {
    return Intl.message(
      'Tool library',
      name: 'utils',
      desc: '',
      args: [],
    );
  }

  /// `The regular verification`
  String get regular {
    return Intl.message(
      'The regular verification',
      name: 'regular',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a string that you want to validate`
  String get regexp_hint {
    return Intl.message(
      'Please enter a string that you want to validate',
      name: 'regexp_hint',
      desc: '',
      args: [],
    );
  }

  /// `Verify the phone number`
  String get regexp_phone {
    return Intl.message(
      'Verify the phone number',
      name: 'regexp_phone',
      desc: '',
      args: [],
    );
  }

  /// `Validation email`
  String get regexp_email {
    return Intl.message(
      'Validation email',
      name: 'regexp_email',
      desc: '',
      args: [],
    );
  }

  /// `Simple encryption and decryption`
  String get simple_encry {
    return Intl.message(
      'Simple encryption and decryption',
      name: 'simple_encry',
      desc: '',
      args: [],
    );
  }

  /// `Please enter an encrypted string`
  String get input_encry {
    return Intl.message(
      'Please enter an encrypted string',
      name: 'input_encry',
      desc: '',
      args: [],
    );
  }

  /// `encryption`
  String get encry {
    return Intl.message(
      'encryption',
      name: 'encry',
      desc: '',
      args: [],
    );
  }

  /// `decryption`
  String get decry {
    return Intl.message(
      'decryption',
      name: 'decry',
      desc: '',
      args: [],
    );
  }

  /// `Decrypt string`
  String get input_decry {
    return Intl.message(
      'Decrypt string',
      name: 'input_decry',
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