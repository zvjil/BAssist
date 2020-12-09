import 'package:flutter/material.dart';
import 'package:lerapp/home_widget.dart';
import 'package:lerapp/diary_widget.dart';
import 'package:lerapp/timer_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<BottomNavigationBarItem> _navigationBarItems = [
    BottomNavigationBarItem(
      label: 'Home',
      icon: Icon(Icons.home),
    ),
    BottomNavigationBarItem(
      label: 'Timer',
      icon: Icon(Icons.access_time),
    ),
    BottomNavigationBarItem(
      label: 'Diary',
      icon: Icon(Icons.fastfood_sharp),
    ),
  ];

  Widget _currentWidget = HomeWidget();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          _currentWidget = HomeWidget();
          break;
        case 1:
          _currentWidget = TimerWidget();
          break;
        case 2:
          _currentWidget = DiaryWidget();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: _navigationBarItems,
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff1db9e8),
        onTap: _onItemTapped,
      ),
      body: _currentWidget,
    );
  }
}
