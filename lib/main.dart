import 'package:flutter/material.dart';
import 'package:paybox/containers/splash/container.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:paybox/services/storage.dart';
import 'services/intl/index.dart';
import 'services/intl/localizations-delegate.dart';
import 'application.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp();

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  PayBoxLocalizationsDelegate _localeOverrideDelegate;

  @override
  void initState() {
    super.initState();
    _localeOverrideDelegate = new PayBoxLocalizationsDelegate(null);
    applic.onLocaleChanged = onLocaleChange;
    // Storage.getString("lang").then((result) {
    //   if (result != null && result != '') {
    //     onLocaleChange(new Locale(result));
    //   } else {
    //     onLocaleChange(new Locale('fa'));
    //   }
    // });
  }

  onLocaleChange(Locale locale) {
    setState(() {
      _localeOverrideDelegate = new PayBoxLocalizationsDelegate(locale);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => PayBoxLocalizations.of(context).appTitle,
      localizationsDelegates: [
        _localeOverrideDelegate,
        const TranslationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      locale: _localeOverrideDelegate.overriddenLocale,
      supportedLocales: applic.supportedLocales(),
      theme: ThemeData(
          buttonTheme: ButtonThemeData(height: 25, minWidth: 30),
          primaryColor: const Color(0xFF22819F),
          accentColor: const Color(0xFFD3214D),
          appBarTheme: AppBarTheme(
            brightness: Brightness.dark,
            iconTheme: IconThemeData(
              color: Colors.black, //change your color here
            ),
            color: const Color(0xFF23B0DA),
          ),
          scaffoldBackgroundColor: const Color(0xFFFFFFFF),
          fontFamily: 'Vazir'),
      home: SplashBox(),
    );
  }
}
