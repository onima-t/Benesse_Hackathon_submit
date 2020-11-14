import 'package:flutter/material.dart';
import 'HomePage.dart';

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('mi card'),
      // ),
      backgroundColor: Colors.indigo[500],
      body: Center(
        child: RaisedButton(
          child: Text('nextpage'),
          onPressed: (){
            print('jisyuu!');
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HomePage()
              ),
            );
          },
        ),
      ),
    );
  }
}