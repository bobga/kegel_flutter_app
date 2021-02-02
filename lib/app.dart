import 'package:flutter/material.dart';
import 'route_generator.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:global_configuration/global_configuration.dart';
import 'generated/l10n.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFFF5739E),
        backgroundColor: Color(0xFFF5F7FA),
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.black,
            fontSize: 37,
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
            color: Colors.black,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          headline5: TextStyle(
            color: Colors.black,
            height: 1,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          headline6: TextStyle(
            color: Color(0xFF5B5B5B),
            height: 1.4,
          ),
          subtitle1: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          subtitle2: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: Color(0xFFFD7452),
            textStyle: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      initialRoute: '/Splash',
      onGenerateRoute: RouteGenerator.generateRoute,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
    );
  }
}
