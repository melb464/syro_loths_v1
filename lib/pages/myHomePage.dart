import 'package:flutter/material.dart';
import 'package:syro_loths_v1/components/box.dart';
import 'package:syro_loths_v1/components/button.dart';

import '../utils/dateFinder.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {

  String _date = "";

  void _findDate(){
    setState(() {
      var dateFinder = DateFinder();
      _date = dateFinder.getCalanderInfo();
    });
  }

  void _incrementCounter() {
    setState(() {
    });
  }


  @override
  Widget build(BuildContext context) {
    _findDate();
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text(_date),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MyBox(color:  Theme.of(context).colorScheme.primary,
            child: MyButton(
                color:Theme.of(context).colorScheme.secondary,
                onTap: _incrementCounter)
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
