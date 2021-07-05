import 'package:flutter/material.dart';
import 'package:sport_horizon_flutter/data/reviews.dart';
import 'package:sport_horizon_flutter/utils/global.dart';
import 'package:sport_horizon_flutter/views/pages/login.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    initReview();
    return AppState();
  }
}

class AppState extends State<App> {
  void updateDarkThemeState() {
    setState(() {
      darkThemeEnabled = !darkThemeEnabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(updateDarkThemeState),
      theme: darkThemeEnabled ? ThemeData.dark() : ThemeData.light(),
      debugShowCheckedModeBanner: false,
    );
  }
}
