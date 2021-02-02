import 'package:flutter/material.dart';
import 'pages/pages.dart';
import 'pages/splash_screen.dart';
import 'pages/DayExercise.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;
    switch (settings.name) {
      case '/Splash':
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case '/DayExercise':
        return MaterialPageRoute(builder: (_) => DayExerciseWidget());
      case '/Pages':
        return MaterialPageRoute(builder: (_) => PagesWidget(currentTab: args));
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return MaterialPageRoute(
            builder: (_) =>
                Scaffold(body: SafeArea(child: Text('Route Error'))));
    }
  }
}
