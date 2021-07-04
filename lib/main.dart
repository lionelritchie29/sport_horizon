import 'package:flutter/material.dart';
import 'package:sport_horizon_flutter/views/components/nav_drawer.dart';
import 'package:sport_horizon_flutter/views/pages/home.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
