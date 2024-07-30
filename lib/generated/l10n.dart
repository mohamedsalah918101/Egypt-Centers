// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome To Hesa`
  String get welcomeToHesa {
    return Intl.message(
      'Welcome To Hesa',
      name: 'welcomeToHesa',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Dont worry! Our app makes it easy to catch up on the lessons you missed at the learning center or with your teacher.`
  String get dontWorryOurAppMakesItEasy {
    return Intl.message(
      'Dont worry! Our app makes it easy to catch up on the lessons you missed at the learning center or with your teacher.',
      name: 'dontWorryOurAppMakesItEasy',
      desc: '',
      args: [],
    );
  }

  /// `next`
  String get next {
    return Intl.message(
      'next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `getStarted`
  String get getstarted {
    return Intl.message(
      'getStarted',
      name: 'getstarted',
      desc: '',
      args: [],
    );
  }

  /// `previous`
  String get previous {
    return Intl.message(
      'previous',
      name: 'previous',
      desc: '',
      args: [],
    );
  }

  /// `get code`
  String get getCode {
    return Intl.message(
      'get code',
      name: 'getCode',
      desc: '',
      args: [],
    );
  }

  /// `Get a unique code from your teacher or educational center.`
  String get getAUniqueCodeFromYourTeacher {
    return Intl.message(
      'Get a unique code from your teacher or educational center.',
      name: 'getAUniqueCodeFromYourTeacher',
      desc: '',
      args: [],
    );
  }

  /// `enter code`
  String get enterCode {
    return Intl.message(
      'enter code',
      name: 'enterCode',
      desc: '',
      args: [],
    );
  }

  /// `Register and use the code to access the missed class.`
  String get registerAndUseTheCode {
    return Intl.message(
      'Register and use the code to access the missed class.',
      name: 'registerAndUseTheCode',
      desc: '',
      args: [],
    );
  }

  /// `Follow the class`
  String get followTheClass {
    return Intl.message(
      'Follow the class',
      name: 'followTheClass',
      desc: '',
      args: [],
    );
  }

  /// `Follow the class on the app and take notes.`
  String get followTheClassOnTheAppAn {
    return Intl.message(
      'Follow the class on the app and take notes.',
      name: 'followTheClassOnTheAppAn',
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
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
