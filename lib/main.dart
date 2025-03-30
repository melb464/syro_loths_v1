import 'package:flutter/material.dart';
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
      theme: ThemeData.dark(),
      home: const MyHomePage(title: 'Syro-Malabar Liturgy of the Hours'),
    );
  }
}
