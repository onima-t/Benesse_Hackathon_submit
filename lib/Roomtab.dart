import 'package:flutter/material.dart';

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