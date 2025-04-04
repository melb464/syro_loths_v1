import 'package:flutter/material.dart';
import 'package:syro_loths_v1/theme/theme.dart';
import 'pages/myHomePage.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final ValueNotifier<ThemeData> _notifier = ValueNotifier(ThemeData.dark());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Syro-loths',
      theme: lightMode,
      darkTheme: darkMode,
      home: const MyHomePage(title: 'Syro-Malabar Liturgy of the Hours'),
    );
  }
}
