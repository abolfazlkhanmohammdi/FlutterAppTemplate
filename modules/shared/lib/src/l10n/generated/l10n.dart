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

class SharedLocalizations {
  SharedLocalizations();

  static SharedLocalizations? _current;

  static SharedLocalizations get current {
    assert(_current != null,
        'No instance of SharedLocalizations was loaded. Try to initialize the SharedLocalizations delegate before accessing SharedLocalizations.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<SharedLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = SharedLocalizations();
      SharedLocalizations._current = instance;

      return instance;
    });
  }

  static SharedLocalizations of(BuildContext context) {
    final instance = SharedLocalizations.maybeOf(context);
    assert(instance != null,
        'No instance of SharedLocalizations present in the widget tree. Did you add SharedLocalizations.delegate in localizationsDelegates?');
    return instance!;
  }

  static SharedLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<SharedLocalizations>(context, SharedLocalizations);
  }

  /// `We're sorry`
  String get weAreSorry {
    return Intl.message(
      'We\'re sorry',
      name: 'weAreSorry',
      desc: '',
      args: [],
    );
  }

  /// `Server error occurred`
  String get serverErrorOccurred {
    return Intl.message(
      'Server error occurred',
      name: 'serverErrorOccurred',
      desc: '',
      args: [],
    );
  }

  /// `Runtime error occurred`
  String get runtimeErrorOccurred {
    return Intl.message(
      'Runtime error occurred',
      name: 'runtimeErrorOccurred',
      desc: '',
      args: [],
    );
  }

  /// `Try again`
  String get tryAgain {
    return Intl.message(
      'Try again',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get s {
    return Intl.message(
      '',
      name: 's',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate
    extends LocalizationsDelegate<SharedLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<SharedLocalizations> load(Locale locale) =>
      SharedLocalizations.load(locale);
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
