import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:wedding_card/ui/body.dart';
import 'package:wedding_card/ui/date_info.dart';
import 'package:wedding_card/ui/header.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int isPlayed=0;
  final AudioPlayer _audioPlayer = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Header(),
            const Body(),
            const DateInfo(),
          ],
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(12.0),
          child: FloatingActionButton(
            onPressed: () async {
              if(isPlayed != 1){
                isPlayed = await _audioPlayer.play('https://bigtheme.co/wp-content/uploads/bigthemePlayer.mp3');
                setState(() {
                  isPlayed = 1;
                });
              } else if(isPlayed == 1){
                _audioPlayer.pause();
                setState(() {
                  isPlayed = 0;
                });
              }
            },
            child: isPlayed == 1 ? const Icon(Icons.pause) : const Icon(Icons.play_arrow),
          ),
        ),
      ),
    );
  }
}
