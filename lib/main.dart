import 'package:flutter/material.dart';

import 'home.dart';
import 'theme.dart';

void main() => runApp(ArtApp());

class ArtApp extends StatelessWidget {
  final theme = ArtappTheme.dark();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Art App',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: theme,
      // A widget which will be started on application startup
      home: Home(),
    );
  }
}
