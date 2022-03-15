import 'package:flutter/material.dart';
import 'package:wedding_card/ui/body.dart';
import 'package:wedding_card/ui/date_info.dart';
import 'package:wedding_card/ui/header.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: const [
            Header(),
            Body(),
            DateInfo(),
          ],
        ),
      ),
    );
  }
}
