import 'package:flutter/material.dart';
import 'package:wedding_card/ui/body.dart';
import 'package:wedding_card/ui/date_info.dart';
import 'package:wedding_card/ui/header.dart';
import 'package:wedding_card/ui/location.dart';
import 'package:wedding_card/ui/timer_widget.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Header(),
            Body(),
            DateInfo(),
            Container(
              height: 300,
              child: TimerWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
