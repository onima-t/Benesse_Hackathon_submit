import 'package:flutter/material.dart';

class RoomTab extends StatefulWidget {
  @override
  _RoomTabState createState() => _RoomTabState();
}

class _RoomTabState extends State<RoomTab> {
  Column make_column({String image_name, String user_name}) =>
      Column(
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
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
        ],
      );
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            make_column(image_name: 'images/twitter.png', user_name: 'Aさん'),
            make_column(image_name: 'images/monst.png', user_name: 'Bさん'),
          ],
        ),
        Row(
          children: [
            make_column(
                image_name: 'images/fire_small.png', user_name: 'Cさん'),
            make_column(image_name: 'images/fire_big.png', user_name: 'Dさん')
          ],
        )
      ],
    );
  }
}