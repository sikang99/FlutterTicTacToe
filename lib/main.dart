import 'package:flutter/material.dart';
import 'package:tictactoe/home_page.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride; // for desktop embedder

//void main() => runApp(new MyApp());
void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia; // for desktop embedder
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primaryColor: Colors.black),
      home: new HomePage(),
    );
  }
}
