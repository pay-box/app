import 'dart:async';

// import 'package:paybox/l10n/messages_all.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// We have to build this file before we uncomment the next import line,
// and we'll get to that shortly
// import '../../l10n/messages_all.dart';

class PayBoxLocalizations {
  /// Initialize localization systems and messages
  static Future<PayBoxLocalizations> load(Locale locale) async {
    // If we're given "en_US", we'll use it as-is. If we're
    // given "en", we extract it and use it.
    final String localeName =
        locale.countryCode == null || locale.countryCode.isEmpty
            ? locale.languageCode
            : locale.toString();

    // We make sure the locale name is in the right format e.g.
    // converting "en-US" to "en_US".
    final String canonicalLocaleName = Intl.canonicalizedLocale(localeName);

    // Load localized messages for the current locale.
    // await initializeMessages(canonicalLocaleName);
    // We'll uncomment the above line after we've built our messages file

    // Force the locale in Intl.
    Intl.defaultLocale = canonicalLocaleName;

    return PayBoxLocalizations();
  }

  /// Retrieve localization resources for the widget tree
  /// corresponding to the given `context`
  static PayBoxLocalizations of(BuildContext context) =>
      Localizations.of<PayBoxLocalizations>(context, PayBoxLocalizations);

  String get code => Intl.getCurrentLocale();

  String get appTitle => Intl.message(
        'PayBox',
        name: 'appTitle',
        desc: 'App title',
      );
    
  String get dateSinceLabelHoursAgo => Intl.message(
        ' hours ago',
        name: 'dateSinceLabelHoursAgo',
        desc: 'Since date label hours ago',
      );

  String get dateSinceLabelMinutesAgo => Intl.message(
        ' minutes ago',
        name: 'dateSinceLabelMinutesAgo',
        desc: 'Since date label minutes ago',
      );

  String get dateSinceLabelSecondsAgo => Intl.message(
        ' seconds ago',
        name: 'dateSinceLabelSecondsAgo',
        desc: 'Since date label seconds ago',
      );

}
