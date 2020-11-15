import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'Roomtab.dart';
import 'Timelinetab.dart';
import '../color.dart';

class RoomPage extends StatefulWidget {
  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  int _selectedIndex = 0;

  static List<Widget> _pageList = [
    RoomTab(U: UList),
    TimelineTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Room#51'),
          backgroundColor: ABColor,
          actions: <Widget>[
        IconButton(icon: Icon(Icons.share) , onPressed: (){
          Share.share("#51");},
        )
      ]),
      backgroundColor: BGColor,
      body: _pageList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.flash_on),
            title: Text('just now'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restore),
            title: Text('History'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
