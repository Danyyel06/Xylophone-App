import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _MyAppState();
}

class _MyAppState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MusicContainer(
                color: Colors.red,
                tapSound: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('assets/Xylophone note 1.wav'));
                  print("Red container tapped");
                },
              ),
              MusicContainer(
                color: Colors.orange,
                tapSound: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('assets/Xylophone note 2.wav'));
                  print("Orange container tapped");
                },
              ),
              MusicContainer(
                color: Colors.yellow,
                tapSound: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('assets/Xylophone note 3.wav'));
                  print("Yellow container tapped");
                },
              ),
              MusicContainer(
                color: Colors.blue,
                tapSound: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('assets/Xylophone note 4.wav'));
                  print("Blue container tapped");
                },
              ),
              MusicContainer(
                color: Colors.green,
                tapSound: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('assets/Xylophone note 5.wav'));
                  print("Green container tapped");
                },
              ),
              MusicContainer(
                color: Colors.teal,
                tapSound: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('assets/Xylophone note 6.wav'));
                  print("Teal container tapped");
                },
              ),
              MusicContainer(
                color: Colors.purple,
                tapSound: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('assets/Xylophone note 7.wav'));
                  print("Purple container tapped");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MusicContainer extends StatelessWidget {
  final Color color;
  final Function()? tapSound;
  MusicContainer({super.key, required this.color, this.tapSound});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(child: Container(color: color), onTap: tapSound),
    );
  }
}
