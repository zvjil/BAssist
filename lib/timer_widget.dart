import 'package:flutter/material.dart';
import 'package:lerapp/timer_set.dart';

class TimerWidget extends StatefulWidget {
  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LER Breastfeeding Assistant'),
      ),
      body: TextFieldInput(),
    );
  }
}
