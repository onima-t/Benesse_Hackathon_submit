import 'package:flutter/material.dart';
import 'Roomtab.dart';
import 'Timelinetab.dart';
import 'color.dart';

class RoomPage extends StatefulWidget {
  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {

  int _selectedIndex=0;


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
    return Scaffold(
      appBar: AppBar(title: Text('Room'),backgroundColor: ABColor),
      backgroundColor: BGColor,
      body:_pageList[_selectedIndex],
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


class CustomPage extends StatelessWidget {
  final Color pannelColor;
  final String title;

  CustomPage({@required this.pannelColor, @required this.title});

  @override
  Widget build(BuildContext context) {
    final titleTextStyle = Theme.of(context).textTheme.title;
    return Container(
      child: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              color: pannelColor,
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: titleTextStyle.fontSize,
                color: titleTextStyle.color,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RoomTab extends StatefulWidget {
  @override
  _RoomTabState createState() => _RoomTabState();
}

class _RoomTabState extends State<RoomTab> {
  Container make_icons(String asset_name) => Container(
      width: 200.0,
      height: 200.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('$asset_name'),
          ),
          border: Border.all(width: 20,color: Colors.indigo)
      )
  );
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 300.0,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              make_icons('images/human1.png'),
              make_icons('images/dog.png'),
              make_icons('images/cat.png'),
              make_icons('images/clown-fish.png'),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'ルーム',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}