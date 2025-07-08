import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:testing/timer/timer_container.dart';

class TimerScreen extends StatelessWidget {
  TimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(title: Text("Timer Screen")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: Colors.deepPurple,
              child: Column(children: [Text("00"), Text("Hours")]),
            ),
          ],
        ),
      ),
    ));
  }
}
