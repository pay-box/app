import 'package:paybox/services/storage.dart';
import 'package:flutter/material.dart';

typedef void LocaleChangeCallback(Locale locale);

class APPLIC {
  // List of supported languages
  final String connectedStatus = 'connected';
  final String notConnectedStatus = 'not_connected';
  String connectionStatus = 'connected';
  final List<String> supportedLanguages = ['en', 'fa', 'ar'];
  Map<String, dynamic> config = {};
  // Returns the list of supported Locales
  Iterable<Locale> supportedLocales() =>
      supportedLanguages.map<Locale>((lang) => new Locale(lang, ''));

  // Function to be invoked when changing the working language
  LocaleChangeCallback onLocaleChanged;

  ///
  /// Internals
  ///
  static final APPLIC _applic = new APPLIC._internal();

  factory APPLIC() {
    return _applic;
  }

  void upateConfig(Map<String, dynamic> data) {
    config = data;
  }

  APPLIC._internal();
}

APPLIC applic = new APPLIC();
