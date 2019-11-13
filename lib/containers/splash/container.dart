import 'package:flutter/material.dart';
import 'package:paybox/assets.dart';
import 'package:paybox/config.dart';
import 'package:paybox/services/intl/index.dart';

class SplashBox extends StatefulWidget {
  const SplashBox({Key key}) : super(key: key);

  @override
  _SplashBoxState createState() => _SplashBoxState();
}

class _SplashBoxState extends State<SplashBox>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(PayBoxConfig.styleVarialbles['splashBackgroundColor']),
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              child: Image.asset(
                ImageAssets.backgroundTopLeft,
                height: MediaQuery.of(context).size.height / 4,
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                ImageAssets.backgroundBottomRight,
                height: MediaQuery.of(context).size.height / 2.7,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset(
                    ImageAssets.logo,
                    width: MediaQuery.of(context).size.width / 3,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      PayBoxLocalizations.of(context).appTitle,
                      style: TextStyle(fontSize: 23),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
