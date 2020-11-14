import 'package:flutter/material.dart';
import 'TimelinePage.dart';

class RoomPage extends StatefulWidget {
  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('mi card'),
      // ),
      backgroundColor: Colors.indigo[500],
      body: Center(
        child: RaisedButton(
          child: Text('Roompage'),
          onPressed: (){
            print('jisyuu!');
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => TimelinePage()
              ),
            );
          },
        ),
      ),
    );
  }
}