import 'package:flutter/material.dart';
import 'Roomtab.dart';
import 'Timelinetab.dart';
import 'color.dart';

class RoomPage extends StatefulWidget {
  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  int _selectedIndex = 0;

  static List<Widget> _pageList = [
    RoomTab(),
    TimelineTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Column make_column({String image_name, String user_name}) => Column(
      children: [
        Container(
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image_name),
            ),
          ),
        ),
        Text(user_name,
        style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Room#51'),
        backgroundColor: ABColor,
      ),
      backgroundColor: BGColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              make_column(image_name: 'images/twitter.png',user_name: 'Aさん'),
              make_column(image_name: 'images/monst.png',user_name: 'Bさん'),
            ],
          ),
          Row(
            children: [
              make_column(image_name: 'images/fire_small.png',user_name: 'Cさん'),
              make_column(image_name: 'images/fire_big.png',user_name: 'Dさん')
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Setting'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

