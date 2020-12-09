import 'package:flutter/material.dart';
import 'package:lerapp/dashboard.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LER Profile'),
      ),
      body: Dashboard(),
    );
  }
}
