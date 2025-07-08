import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:testing/timer/timer_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "When I thought I lost me, you know where I left me, you re-introduced me to your love, You picked up all my peices and put me back together, you are the Defender of my Heart.",
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return TimerScreen();
                    },
                  ),
                );
              },
              child: Text("Timer App"),
            ),
          ],
        ),
      ),
    );
  }
}
