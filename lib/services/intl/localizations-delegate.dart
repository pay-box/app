import 'dart:async';

import 'package:flutter/material.dart';
import 'package:paybox/application.dart';
import 'index.dart';


class TranslationsDelegate extends LocalizationsDelegate<PayBoxLocalizations> {
  const TranslationsDelegate();

  @override
  bool isSupported(Locale locale) => applic.supportedLanguages.contains(locale.languageCode);

  @override
  Future<PayBoxLocalizations> load(Locale locale) => PayBoxLocalizations.load(locale);

  @override
  bool shouldReload(TranslationsDelegate old) => false;
}

class PayBoxLocalizationsDelegate extends LocalizationsDelegate<PayBoxLocalizations> {
  final Locale overriddenLocale;

  const PayBoxLocalizationsDelegate(this.overriddenLocale);

  @override
  bool isSupported(Locale locale) => overriddenLocale != null;

  @override
  Future<PayBoxLocalizations> load(Locale locale) => PayBoxLocalizations.load(overriddenLocale);

  @override
  bool shouldReload(LocalizationsDelegate<PayBoxLocalizations> old) => true;
}