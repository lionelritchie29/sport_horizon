import 'package:flutter/material.dart';
import 'package:sport_horizon_flutter/data/reviews.dart';
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
