import 'package:benesse/color.dart';
import 'package:flutter/material.dart';
import 'RoomPage.dart';

class TimelinePage extends StatefulWidget {
  @override
  _TimelinePageState createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Room#51'),
        backgroundColor: ABColor,
      ),
      backgroundColor: BGColor,
      body: Center(
        child: RaisedButton(
          child: Text('Timelinepage'),
          onPressed: (){
            print('jisyuu!');
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => RoomPage()
              ),
            );
          },
        ),
      ),
    );
  }
}