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
      // appBar: AppBar(
      //   title: Text('mi card'),
      // ),
      backgroundColor: Colors.indigo[500],
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